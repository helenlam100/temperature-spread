class ArrayDataAnalysis
      def initialize(data) #create initialize method which takes one parameter which I named data, which is actually our TEMPERATURE_DATA
        @data = data
      end

      def lowest_temperature
        @data.map do |second_index_array|
          second_index_array[2] #create a new array with only 2nd index value, and compare to find the minimum. Use .map
        end.min
      end

      def highest_temperature #this is an instance method, you can use it any
        @data.map do |first_index_array|
          first_index_array[1]
        end.max
      end

      def day_of_lowest_temperature
        second_index_array = []
        @data.each {|x| second_index_array << x[2] } #pushing all 2nd index integers into an array
        @data[second_index_array.index(second_index_array.min)][0] #get the newly created array's index from @data, then get the element from position 0
      end

      def day_of_highest_temperature
        first_index_array = []
        @data.each {|x| first_index_array << x[1] } #pushing all first index integers into an array
        @data[first_index_array.index(first_index_array.max)][0]
      end

      def average_temperatures
        @data.map {|x|(x[1] + x[2])/2.0 }
      end
      #this also works using .each method
      # def average_temperatures
      #   #create a new array of the average temperatures of each day (average temperature = @data[0..29])
      #   average_temp_array = []
      #   @data.each {|x| average_temp_array << (x[1] + x[2])/2.0 }
      #   return average_temp_array
      # end

      # describe '#average_temperatures' do
      #   it "returns a array of average temperatures, on for each day" do
      #     expect(analyzer.average_temperatures.length).to be == 30
      #     expect(analyzer.average_temperatures[0]).to be == 73.5
      #     expect(analyzer.average_temperatures[29]).to be == 67.5

end
# day_of = data.map do |second_index_array|
#   p second_index_array[2]
# end.min
# data.index(day_of)
