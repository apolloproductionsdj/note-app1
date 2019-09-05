def collatz_sequence(n)
  array_sequence = []
  until n == 1
   n = n % 2 == 0 ? n/2 : n * 3 + 1
   array_sequence.push(n)
  end
  return array_sequence
end

def longest_collatz
  current_longest = 1
  sequence_length = collatz_sequence(1).length
puts "begin checking collatz_sequence from 1-10"
  1.upto(10) do |i|
    c = collatz_sequence(i)
    length = c.length 
    puts "checking the collatz_sequence of i #{i} of length #{length}"
    if length > sequence_length
      puts "found longer sequence"
      current_longest = i 
      sequence_length = length 
    end
  end 
  current_longest
end