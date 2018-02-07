require('rspec')
require('numbers_to_words')
require('pry')

describe('numbers_to_words') do
  it("return the word version of single digit number") do
    number2 = Numerical.new(2)
    expect(number2.numbers_to_words()).to(eq("two"))
  end

  it("return the word version of any single digit number") do
    number3 = Numerical.new(0)
    expect(number3.numbers_to_words()).to(eq("zero"))
  end

  it("return the word version of any double digit number") do
    number3 = Numerical.new(34)
    expect(number3.numbers_to_words()).to(eq("thirty four"))
  end

  it("return the word version of any double digit number and removing 'zero' when not needed") do
    number3 = Numerical.new(80)
    expect(number3.numbers_to_words()).to(eq("eighty"))
  end

  it("return the word version of any triple digit number and removing 'zero' when not needed") do
    number4 = Numerical.new(142)
    expect(number4.numbers_to_words()).to(eq("one hundred forty two"))
  end

  it("return the word version of any triple digit number and removing 'zero' when not needed") do
    number3 = Numerical.new(200)
    expect(number3.numbers_to_words()).to(eq("two hundred"))
  end

  it("return the word version of any four digit number and removing 'zero' when not needed") do
    number3 = Numerical.new(1020)
    expect(number3.numbers_to_words()).to(eq("one thousand twenty"))
  end

  it("return the word version of any five digit number and removing 'zero' when not needed") do
    number3 = Numerical.new(91020)
    expect(number3.numbers_to_words()).to(eq("ninety one thousand twenty"))
  end

  it("return the word version of any five digit number and removing all'zero' when not needed") do
    number3 = Numerical.new(90000)
    expect(number3.numbers_to_words()).to(eq("ninety thousand"))
  end



end
