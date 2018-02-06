class Numerical
  def initialize(digit)
    @digit = digit
  end

  def numbers_to_words
    single_digits = {0 => "zero", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen"}

    double_digits = {0 => "zero", 2 => "twenty",  3 => "thirty", 4 => "forty", 5 => "fifty", 6 => "sixty", 7 => "seventy", 8 => "eighty", 9 => "ninety"}

    digits_array = @digit.to_s.chars.map(&:to_i)

    reversed_digits_array = digits_array.reverse()

    if (digits_array.length == 1) || (digits_array[1] == 1)
      single_digits.fetch(@digit)

    elsif digits_array.length == 2
      first_digit = reversed_digits_array[0]
      second_digit = reversed_digits_array[1]
      first_digit = single_digits.fetch(first_digit)
      second_digit = double_digits.fetch(second_digit)

      if first_digit == "zero"
        second_digit

      else
        second_digit + " " + first_digit

      end

    elsif digits_array.length == 3
      first_digit = reversed_digits_array[0]
      second_digit = reversed_digits_array[1]
      third_digit = reversed_digits_array[2]
      first_digit = single_digits.fetch(first_digit)
      second_digit = double_digits.fetch(second_digit)
      third_digit = single_digits.fetch(third_digit)

      if first_digit == "zero" && second_digit == "zero"
        third_digit + " " + "hundred"

      elsif first_digit == "zero"
      third_digit + " " + "hundred" + " " + second_digit

      else
        third_digit + " " + "hundred" + " " + second_digit + " " + first_digit

      end

    else digits_array.length == 4
      first_digit = reversed_digits_array[0]
      second_digit = reversed_digits_array[1]
      third_digit = reversed_digits_array[2]
      fourth_digit = @digit/1000
      first_digit = single_digits.fetch(first_digit)
      second_digit = double_digits.fetch(second_digit)
      third_digit = single_digits.fetch(third_digit)
      fourth_digit = single_digits.fetch(fourth_digit)

      if first_digit == "zero" && second_digit == "zero" && third_digit == "zero"
        fourth_digit + " " + "thousand"

      elsif first_digit == "zero" && second_digit == "zero"
        fourth_digit + " " + "thousand" + " " + third_digit + " " + "hundred"

      elsif first_digit == "zero" && third_digit == "zero"
        fourth_digit + " " + "thousand" + " " + second_digit

      elsif first_digit == "zero"
        fourth_digit + " " + "thousand" + " " + third_digit + " " + "hundred" + " " + second_digit

      else
        fourth_digit + " " + "thousand" + " " + third_digit + " " + "hundred" + " " + second_digit + " " + first_digit

      end
    end
  end
end
