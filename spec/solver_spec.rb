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

  context '#Fizzbuzz' do
    it 'Should return a string value' do
      expect(@solver.fizzbuzz(4)).to eq '4'
    end

    it 'takes arguments only divisible by 3 and return "fizz"' do
      expect(@solver.fizzbuzz(3)).to eq 'fizz'
      expect(@solver.fizzbuzz(9)).to eq 'fizz'
      expect(@solver.fizzbuzz(21)).to eq 'fizz'
      expect(@solver.fizzbuzz(33)).to eq 'fizz'
    end

    it 'takes arguments only divisible by 5 and return "buzz"' do
      expect(@solver.fizzbuzz(10)).to eq 'buzz'
      expect(@solver.fizzbuzz(25)).to eq 'buzz'
      expect(@solver.fizzbuzz(175)).to eq 'buzz'
      expect(@solver.fizzbuzz(98_650)).to eq 'buzz'
    end

    it 'takes arguments divisible by both 3 and 5 and return "fizzbuzz"' do
      expect(@solver.fizzbuzz(15)).to eq 'fizzbuzz'
      expect(@solver.fizzbuzz(30)).to eq 'fizzbuzz'
      expect(@solver.fizzbuzz(45)).to eq 'fizzbuzz'
      expect(@solver.fizzbuzz(60)).to eq 'fizzbuzz'
    end

    it 'takes arguments not divisible by 3 and 5 and return argument in string' do
      expect(@solver.fizzbuzz(7)).to eq 7.to_s
      expect(@solver.fizzbuzz(11)).to eq 7.to_s
      expect(@solver.fizzbuzz(47)).to eq 7.to_s
      expect(@solver.fizzbuzz(59)).to eq 7.to_s
      expect(@solver.fizzbuzz(119)).to eq 7.to_s
    end
  end
end
