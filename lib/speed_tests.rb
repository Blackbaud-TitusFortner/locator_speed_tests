require 'descriptive_statistics'
DescriptiveStatistics.empty_collection_default_value = 0.0

require "speed_tests/version"
require "speed_tests/results"


module SpeedTests

  def average_by_id(value= 'text_1', repeat=30)
    @array = []
    repeat.times do
      start_time = Time.now
      b.a(id: value).exists?
      @array << Time.now - start_time
    end
    @array.reduce(:+).to_f / @array.size
  end

end
