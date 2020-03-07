class TurnStile
  DIRECTIONS = { IN: 0, OUT: 1 }

  Person = Struct.new(:index, :arrival_time, :direction, :enter_turnstile_time) do
    def has_not_exited?
      !enter_turnstile_time
    end
  end

  State = Struct.new(:time, :entry_queue, :exit_queue, :person_in_turnstile) do
    def build_next
      State.new(time + 1, entry_queue.dup, exit_queue.dup, person_in_turnstile)
    end
  end

  def initialize(time, direction)
    @people = time.map.with_index { |t, ix| Person.new(ix, t, direction[ix], nil) }
    @states = [State.new(-1, Array.new, Array.new, nil)]
  end

  def process
    while @people.any?(&:has_not_exited?)
      @states << process_next_state(@states)
    end

    @people.map(&:enter_turnstile_time)
  end

  def process_next_state(states)
    current_state = states.last.build_next

    log_str = "Time: #{current_state.time}"

    @people.each do |person|
      next unless person.arrival_time == current_state.time

      case person.direction
      when DIRECTIONS[:IN]
        log_str += ", Person #{person.index} queued for entry"
        current_state.entry_queue << person
      when DIRECTIONS[:OUT]
        log_str += ", Person #{person.index} queued for exit"
        current_state.exit_queue << person
      end
    end

    if current_state.person_in_turnstile
      log_str += ", Person #{current_state.person_in_turnstile.index} exited turnstile"

      turnstile_direction_priority = current_state.person_in_turnstile.direction
      current_state.person_in_turnstile = nil
    end

    turnstile_direction_priority ||= DIRECTIONS[:OUT]

    prioritized_queues =
      case turnstile_direction_priority
      when DIRECTIONS[:IN]
        [current_state.entry_queue, current_state.exit_queue]
      when DIRECTIONS[:OUT]
        [current_state.exit_queue, current_state.entry_queue]
      end

    if current_state.person_in_turnstile = prioritized_queues.first.pop || prioritized_queues.last.pop
      current_state.person_in_turnstile.enter_turnstile_time = current_state.time
      log_str += ", Person #{current_state.person_in_turnstile.index} entered turnstile"
    end

    puts log_str
    current_state
  end
end

p TurnStile.new([0,0,1,5], [0,1,1,0]).process
p TurnStile.new([0,1,1,3,3], [0,1,0,0,1]).process