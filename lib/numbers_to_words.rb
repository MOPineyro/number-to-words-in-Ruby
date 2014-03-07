def numbers_to_words(number)
  single_digit = {1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine"}

  tens = {1 => "ten",2 => "twenty", 3 => "thirty", 4 => "forty", 5 => "fifty", 6 => "sixty", 7 => "seventy", 8 => "eighty", 9 => "ninety"}

  digits = []
  final_words = []

  until number == 0
    digits << number % 10
    number /= 10
  end
  end

  digits = digits.reverse
  digits_lngth = digits.length

  p digits.join.to_i

  digits.each_with_index do |digit, index|
    if index == (digits_lngth - 3)
      final_words << single_digit[digit].to_s + " hundred"
    elsif index == digits_lngth - 2
      final_words << tens[digit]
    #elsif index == (digits_lngth - 4)
    #  final_words << single_digit[digit].to_s + " thousand"
    else
      final_words << single_digit[digit]

# Notes:
# Rules:
# thousands - if digits.length / 3 = 1 & <= 2 . Add 'thousand' at index at length-4
# millions - if digits.length / 3 = 2 & <= 3 . Add 'million' at index at length-7
# etc..
    end
  end


p final_words.join(" ")
end

p numbers_to_words(1523)

