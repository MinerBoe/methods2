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
end
