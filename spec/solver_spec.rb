require_relative './solver'

describe Solver do
  before :each do
    @solver = Solver.new
  end

  context '#Factorial' do
    it 'takes one argument, an integer N, and returns the factorial for that number' do
      expect(@solver.factorial(5)).to eq 120
      expect(@solver.factorial(7)).to eq 5_040
      expect(@solver.factorial(9)).to eq 362_880
    end

    it 'takes 0 as an argument and returns 1' do
      expect(@solver.factorial(0)).to eq 1
    end

    it 'raises an error if passed a negative number' do
      expect { @solver.factorial(-1) }.to raise_error
    end
  end

  context '#Reverse-string' do
    it 'takes "hello" argument and returns "olleh"' do
      expect(@solver.reverse('hello')).to eq 'olleh'
    end

    it 'takes "hello world!" argument of more than one word and returns "!dlrow olleh"' do
      expect(@solver.reverse('hello world!')).to eq '!dlrow olleh'
    end

    it 'take symbol and number arguments and reverse them' do
      expect(@solver.reverse('')).to eq ''
      expect(@solver.reverse('@#₦%&')).to eq '&%₦#@'
      expect(@solver.reverse('12345')).to eq '54321'
      expect(@solver.reverse('!@#098')).to eq '890#@!'
    end
  end
end
