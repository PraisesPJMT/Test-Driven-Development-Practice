require_relative './solver'

describe Solver do
  before :each do
    @solver = Solver.new
  end

  describe "#factorial" do
    it 'takes one argument, an integer N, and returns the factorial for that number'
    expect(@solver.factorial(5)).to eql 120
    expect(@solver.factorial(7)).to eql 5_040
    expect(@solver.factorial(9)).to eql 362_880
  end

  it 'takes 0 as an argument and returns 1' do
    expect(@solver.factorial(0)).to eq 1
  end

  it 'raises an error if passed anegative number' do
    expect { @solver.factorial(-1) }.to raise_error
  end
end
