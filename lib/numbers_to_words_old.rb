## 100s digit of the number in words + 'hundred ' + 'and ' + rest of digits in words
    ## divmod - Returns an array containing the quotient and modulus
    ##  obtained by dividing num by numeric. If q, r = x.divmod(y), then q = floor(x/y) x = q*y+r

def numbers_to_words(number)
  number_words_hash = {
    1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine"
  }
  digits = []
  digits_to_words = []

  while number > 0 ## split number into an array of digits
    digits.unshift(number % 10) ## take number and place remainder of number divided by 10 into array
    number /= 10 ## set number to original number divided by 10, giving you next digits place
  end ## loop ends and the result is each number in proper digits placed reversed. E.G. 123 = ['3','2','1']

  digits = digits.reverse ## reverse the digit array

  digits.each do |digit| ## for each digit return the digit word into a new array.
    digits_to_words << number_words_hash[digit] ## look for current digit in number_words_hash and return the associated number word and place into array.
    print digits_to_words
  end

  print digits_to_words

end

numbers_to_words(9321)
