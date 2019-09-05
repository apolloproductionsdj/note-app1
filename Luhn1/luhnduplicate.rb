class Luhn
  
  def initialize(number)
    @number = number
  end

  def is_valid?
    @indiv_digits = individual_digits
    @doubled = doubled_every_first_digit     
    validate_the_sum
  end

  private

  def individual_digits
    @number.to_s.chars.map(&:to_i)
  end

  def doubled_every_first_digit
    doubled = @indiv_digits.
      each_slice(2).
      to_a.tap{|a| puts a.inspect}.
      flat_map  do |(a, b)|
        c = a * 2
        puts c1:c  
        c -= 9 if c >= 10
        puts c2:c  
        results = [c, b].compact
        puts results
        results 
      end
  end

  def validate_the_sum
    sum = @doubled.inject(0){|starting_value, a| starting_value += a } 
    # Step 5 - If the sum is divisible by 10, it's a valid number. Otherwise it's invalid.
    sum % 10 == 0
  end

end