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
  end
  end