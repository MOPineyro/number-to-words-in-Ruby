require('numbers_to_words')
require('rspec')

describe("numbers_to_words") do
  it('Should take the integer 1 and return the string "one"') do
    numbers_to_words(1).should(eq("one"))
  end
  it("should take the integer 23 and return the string 'twentythree'") do
    numbers_to_words(23).should(eq("twentythree"))
  end
  # it('Should take the interger 101 and return the string "one hundred and one"') do
  #   numbers_to_words(101).should(eq("one hundred and one"))
  # end
end
