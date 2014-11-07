class TemperatureData
  attr_reader :day, :high, :low #same as

  #def day
  #   @day
  # end


  def initialize(day, high, low) #we have 3 parameters
    @day = day
    @high = high
    @low = low
  end
end
