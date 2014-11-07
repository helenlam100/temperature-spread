class ClassDataAnalysis
  def initialize(data)
    @data = data
  end

  def lowest_temperature
     @data.map do |temp_data|
       temp_data.low          #we are getting the value of the attribute low of the TEMPERATURE_DATA
     end.min
  end

  def highest_temperature
    @data.map do |temp_data|
      temp_data.high
    end.max
  end

  def day_of_lowest_temperature
    second_index_array = []
    @data.each {|x| second_index_array << x.low } #pushing all 2nd index integers into an array
    @data[second_index_array.index(second_index_array.min)].day
  end

  def day_of_highest_temperature
    first_index_array = []
    @data.each {|x| first_index_array << x.high } #pushing all first index integers into an array
    @data[first_index_array.index(first_index_array.max)].day
  end

  def average_temperatures
    @data.map {|x|(x.high + x.low)/2.0 } #get each element and get the high and low values, add them and divide by two 
  end
end
