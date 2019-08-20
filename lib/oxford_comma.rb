# method takes in an array of string elements and converts them into a string using the oxford comma

def oxford_comma(array)
  string = ""
  
  if array.length == 1 
    string = array[0]
  elsif array.length == 2 
    string = "#{array[0]} and #{array[1]}"
  else
    array.each do |element|
      if element != array[-1]
        string += "#{element}, "
      else
        string += "and #{element}"
      end
    end
  end
  string
end