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
end
