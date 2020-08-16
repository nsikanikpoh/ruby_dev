# Given one's DailySchedule write an implementation of `#available?`
# method to find out if the person is free at this time or not.

class DailySchedule
  attr_accessor :working_hours, :busy_hours
  
  def initialize(working_hours = [], busy_hours = [])
    @working_hours = working_hours
    @busy_hours = busy_hours
  end
  
  # Check if the person is available at a certain time
  # @param hours [Array<Integer>]
  # @return [Boolean]
  def available?(*hours)
    # implementation
    
    available = true
    
    hours.each do |e| 
     
      available = false if  busy_hours.include?(e)
      
    end
    available
  end
end

require 'minitest/autorun'

class DailyScheduleTest < Minitest::Test
  def setup
    @schedule = DailySchedule.new((9..18).to_a, [14, 15, 18])
  end
  
  def test_available
    assert_equal @schedule.available?(10), true
  end

  def test_busy
    assert_equal @schedule.available?(9,15), false
  end  
end