require_relative '../palindrome.rb'

RSpec.describe 'array' do
  it 'find the starting index of the sub array when array length is odd' do
    expect(second_index([1,2,3,4,5])).to eq(3)
  end

  it 'finds the start index of the sub array when array length is even' do
    expect(second_index([1,2,3,4,5,6])).to eq(3)
  end

  it 'returns sub array of the second part of the array, odd length' do
    expect(second_array([1,2,3,4,5])).to eq([4,5])
  end

  it 'return sub array of the second part of the array, even length' do
    expect(second_array([1,2,3,4,5,6])).to eq([4,5,6])
  end

  it 'return sub array of the first part of the array, odd length' do
    expect(first_array([1,2,3,4,5])).to eq([1,2])
  end

  it 'return sub array of the first part of the array, even length' do
    expect(first_array([1,2,3,4,5,6])).to eq([1,2,3])
  end

  it 'will return true two arrays are equal' do 
    expect(is_two_sub_equal([1,2,3],[3,2,1])).to eq(true)
  end

  it 'will return false two arrays are not equal' do
    expect(is_two_sub_equal([1,2,3],[3,2,5])).to eq(false)
  end

  it 'will return true if number is palindrome' do
    expect(is_palindrome(121)).to eq(true)
  end

  it 'will return true if number is palindrome' do
    expect(is_palindrome(4795974)).to eq(true)
  end

  it 'will return false if number is NOT palindrome' do
    expect(is_palindrome(12345)).to eq(false)
  end

  it 'will return false if number is 0' do
    expect(is_palindrome(0)).to eq(true)
  end

  it 'will return false if number is 10' do
    expect(is_palindrome(10)).to eq(false)
  end
end