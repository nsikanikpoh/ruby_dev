def calculate_turnstile_times(time, direction)
  current_time    = 0
  dir = direction.map { |d| d.zero? ? :enter : :exit }
  enter_queue, exit_queue = time.each_index.map do |i|
                              {person: i, time: time[i], direction: dir[i]}
                            end.partition do |h| 
                              h[:direction] == :enter
                            end.map do |arr| 
                              arr.sort_by { |h| h[:time] }
                            end  

  enterer         = enter_queue.shift
  exiter          = exit_queue.shift

  time.each_with_object([]) do |_t, to_return|
    person_to_go        = nil
    enterer           ||= enter_queue.shift
    exiter            ||= exit_queue.shift
    current_time        = [[enterer,exiter].map{|p|p.try(:[],:time)}.compact.min,current_time].max

    enterer_arrived     = enterer && enterer[:time] <= current_time
    exiter_arrived      = exiter && exiter[:time] <= current_time

    person_to_go    = :enterer if enterer_arrived && !exiter_arrived
    person_to_go  ||= :exiter  if exiter_arrived  && !enterer_arrived
    person_to_go  ||= :exiter  if exiter_arrived  && to_return.empty?
    person_to_go  ||= :exiter  if exiter_arrived  && ((to_return.last.try(:[],:time)||-2) != (current_time-1))
    person_to_go  ||= :enterer if enterer_arrived && to_return.last.try(:[],:direction) == :enter
    person_to_go  ||= :exiter  if exiter_arrived

    case person_to_go
    when :exiter
      person_to_go = exiter 
      exiter = nil
    when :enterer 
      person_to_go = enterer
      enterer = nil
    end

    person_to_go[:time] = current_time
    to_return << person_to_go
    current_time += 1

  end.sort_by{|p| p[:person]}.map{|p| p[:time]}
end

time = [0,1,1,3,3]
direction = [0,1,0,0,1]

p calculate_turnstile_times(time, direction)

p calculate_turnstile_times([0,0,1,5], [0,1,1,0])
p calculate_turnstile_times([0,1,1,3,3], [0,1,0,0,1])