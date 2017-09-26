require './test_setup'
require './methods2'


describe 'Methods2' do

  # TODO - write tests for each method in methods2.rb
  describe 'elevenish?' do
    it 'equal to eleven' do
      elevenish?(11).must_equal(true)
    end
    it 'perfect multiple of 11' do
      elevenish?(22).must_equal(true)
    end
    it 'one greater than a multiple of eleven' do
      elevenish?(23).must_equal(true)
    end

  end

  describe 'ice_cream_party?' do
    it 'no ice cream but lots of candy' do
      ice_cream_party?(0, 100).must_equal(0)
    end
    it 'no candy but lots of ice cream' do
      ice_cream_party?(100, 0).must_equal(0)
    end
    it 'great party - tons of food' do
      ice_cream_party?(10, 30).must_equal(2)
    end
    it 'candy is double ice cream' do
      ice_cream_party?(10, 20).must_equal(2)
    end
    it 'good party - over 5' do
      ice_cream_party?(6, 6).must_equal(1)
    end
    it 'good party - equals 5' do
      ice_cream_party?(5, 5).must_equal(1)
    end
  end

  describe 'successful_squirrel_party?' do
    it 'is weekend between 40 and 60' do
      successful_squirrel_party?(50, true).must_equal(true)
    end
    it 'is weekend over 60' do
      successful_squirrel_party?(70, true).must_equal(true)
    end
    it 'is weekend under 40' do
      successful_squirrel_party?(30, true).must_equal(false)
    end
    it 'is weekday over 60' do
      successful_squirrel_party?(70, false).must_equal(false)
    end
    it 'is weekday between 40 and 60' do
      successful_squirrel_party?(50, false).must_equal(true)
    end
    it 'is weekday under 40' do
      successful_squirrel_party?(30, false).must_equal(false)
    end
  end

  describe 'ticket' do
    it 'all zero' do
      ticket(0, 0, 0).must_equal(0)
    end
    it 'one pair equals 10' do
      ticket(5, 5, 9).must_equal(10)
    end
    it 'all pairs equal 10' do
      ticket(5, 5, 5).must_equal(10)
    end
    it 'ab equals bc + 10' do
      ticket(3, 12, 2).must_equal(5)
    end
  end

  describe 'in_order?' do
    it 'in order and no bOK' do
      in_order?(3, 4, 5, false).must_equal(true)
    end
    it 'in order and bOK' do
      in_order?(4, 5, 6, true).must_equal(true)
    end
    it 'out of order and bOK' do
      in_order?(6, 5, 4, true).must_equal(false)
    end
    it 'b is the smallest and bOK' do
      in_order?(6, 4, 8, true).must_equal(true)
    end
  end

  describe 'less_by_ten?' do
    it 'all equal' do
      less_by_ten?(10, 10, 10).must_equal(false)
    end
    it 'one less by ten - a ' do
      less_by_ten?(10, 20, 25).must_equal(true)
    end
    it 'one less by ten - b ' do
      less_by_ten?(20, 10, 25).must_equal(true)
    end
    it 'one less by ten - c' do
      less_by_ten?(25, 20, 10).must_equal(true)
    end
    it 'both less by more than ten' do
      less_by_ten?(45, 20, 30).must_equal(true)
    end
  end

  describe 'fizz_string' do
    it 'no f or b' do
      fizz_string("Hello").must_equal("Hello")
    end
    it 'starts with f' do
      fizz_string("Funny").must_equal("Fizz")
    end
    it 'ends with b' do
      fizz_string("climb").must_equal("Buzz")
    end
    it 'starts with f and ends with b' do
      fizz_string("flub").must_equal("FizzBuzz")
    end
  end
end
