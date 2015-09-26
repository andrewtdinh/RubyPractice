def fizzbuzz(input_file)
  lines = File.readlines(input_file)
  lines.each do |line|
    words = line.split(' ')
    divisor1 = words[0].to_i
    divisor2 = words[1].to_i
    iterations = words[2].to_i
    char_array = []
    (1..iterations).each do |number|
      if number % divisor1 == 0 && number % divisor2 == 0
        char_array.push('FB')
      elsif number % divisor1 == 0
        char_array.push('F')
      elsif number % divisor2 == 0
        char_array.push('B')
      else
        char_array.push(number)
      end
    end
    puts char_array.join(' ')
  end
end
