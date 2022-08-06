require_relative "../main"

RSpec.describe 'two sum' do
  it 'returns searched number ' do
    expect(search_for(2,9)).to(eq(7))
  end

  it 'should find an index starting from' do
    expect(index_start(3,1,[3,2,3])).to(eq(2))
  end

  # it 'should return 2 index position' do
  #   expect(two_sum([2,7,11,15],9)).to(eq([0,1]))
  # end

  # it 'should return 2 index position example 2' do 
  #   expect(two_sum([3,2,4],6)).to(eq([1,2]))
  # end

  it 'should return index position example 3' do
    expect(two_sum([3,2,3],6)).to(eq([0,2]))
  end
end