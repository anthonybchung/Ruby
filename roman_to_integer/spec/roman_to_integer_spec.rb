require_relative '../roman_to_integer'

RSpec.describe 'Roman to Integer' do
  it 'inputs I to give 1' do
    expect(Roman_digit[:I]).to(eq(1))
  end

  it 'input V to give 5' do
    expect(Roman_digit[:V]).to(eq(5))
  end

  it 'input X to give 10' do
    expect(Roman_digit[:X]).to(eq(10))
  end

  it 'input L to give 50' do
    expect(Roman_digit[:L]).to(eq(50))
  end

  it 'input C to give 100' do 
    expect(Roman_digit[:C]).to(eq(100))
  end

  it 'input D to give 500' do
    expect(Roman_digit[:D]).to(eq(500))
  end

  it 'input M to give 1000' do
    expect(Roman_digit[:M]).to(eq(1000))
  end

  it 'inputs IV returns 4' do
    expect(roman_to_int('IV')).to(eq(4))
  end

  it 'inputs XIV return 14' do
    expect(roman_to_int('XIV')).to(eq(14))
  end

  it 'inputs MCDCXI return 1491' do
    expect(roman_to_int('MCDXCI')).to(eq(1491))
  end
end