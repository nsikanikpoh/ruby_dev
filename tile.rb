class EntryQueue
      attr_accessor :index, :time, :direction, :time_to_exit
      def initialize(index, time, direction, time_to_exit)
         @index = index
         @time = time
         @direction = direction
         @time_to_exit =time_to_exit
      end

      def not_pass?
          !time_to_exit
      end
end

class Register
    attr_accessor :entry_time, :entry_line, :exit_line, :current_person
    def initialize(entry_time, entry_line, exit_line, current_person)
       @entry_time = entry_time
       @entry_line = entry_line
       @exit_line = exit_line
       @current_person = current_person
    end

    def start
        Register.new(entry_time + 1, entry_line.dup, exit_line.dup, current_person)
    end
end

$queue_hash = nil
$exit_register = []

TURNSTILE = { enter: 0, leave: 1 }

def getTimes(time, direction)
   $queue_hash = time.map.with_index { |t, index| EntryQueue.new(index, t, direction[index], nil)}
   $exit_register = [Register.new(-1, Array.new, Array.new, nil)]
    while $queue_hash.any?(&:not_pass?)
     $exit_register << calculate_time_out($exit_register)
    end
    $queue_hash.map(&:time_to_exit)
   end

   def calculate_time_out(register)
    track = register.last.start
    #track["entry_time"] + 1
    
    $queue_hash.each do |i|
      next unless i.time == track.entry_time
      #assign passesers to line
      case i.direction
      when TURNSTILE[:enter]
        track.entry_line << i
      when TURNSTILE[:leave]
        track.exit_line << i
      end
    end

    if track.current_person
      prioritize = track.current_person.direction
      track.current_person = nil
    end

    prioritize ||= TURNSTILE[:leave]

    queue =
      case prioritize
      when TURNSTILE[:enter]
        [track.entry_line, track.exit_line]
      when TURNSTILE[:leave]
        [track.exit_line, track.entry_line]
      end
    if track.current_person = queue.first.pop || queue.last.pop
      track.current_person.time_to_exit = track.entry_time
    end
    track
  end

p getTimes([0,0,1,5], [0,1,1,0]) #2,0,1,5
p getTimes([0,1,1,3,3], [0,1,0,0,1]) # 0, 2, 1, 4, 3