# Apartment List Problem
# Path Normalization

# @author Victor Chang

loop do
  
  puts "Enter file path:"
  path = gets.chomp
  
  # check for erroneous paths
  if path.start_with?("../")
    puts "ERROR: input starts with \"../\". Try again!"
    retry
  end
  if path.scan(%r{([.]{2}\/)}).size > path.scan(%r{\w+}).size
    puts "ERROR: too many parent directory symbols found. Try again!"
    retry
  end
  
  normalizedPath = String.new
  while(true) do
    # replace "./../" with "../" and then replace "folder/../" with empty str so replacing "./" later on doesn't conflict
    # need to loop to take care of nested "../" not caught by first matching
    normalizedPath = path.gsub(%r{\/[.]{1}\/[.]{2}}, '/..').gsub(%r{\w+\/[.]{2}\/?}, '')
    if path == normalizedPath
      break
    else
      path = normalizedPath
    end
  end
  
  # replace "./" with empty str
  
end