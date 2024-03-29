class WeatherData

  attr_accessor :file, :temperatures

  def initialize(file)
    @file = file
    @temperatures ||= temperature_spreads
  end

  def lowest_spread
    temperature_spreads
    min_spread = @temperatures.values.min
    @temperatures.key(min_spread)
  end

  private

  def temperature_spreads
    temp_spreads = {}

    lines = truncate_file

    lines.each do |line|
      day      = line[0]
      max_temp = line[1].to_i
      min_temp = line[2].to_i
      temp_spread = max_temp - min_temp

      temp_spreads[day] = temp_spread
    end
    temp_spreads
  end

  def truncate_file
    lines = @file.split("\n")
    8.times { lines.shift }
    2.times { lines.pop   }
    lines.map { |line| line.strip.split(" ") }
  end

end
