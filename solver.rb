class Solver
  def factorial(num)
    raise 'Number cannot be Negative' if num.negative?

    result = 1
    while num.positive?
      result *= num
      num -= 1
    end
    result
  end

  def reverse(str)
    raise ArgumentError, 'string must be a string' unless str.is_a? String

    str.reverse
  end

  def fizzbuzz(num)
    result = ''
    result += 'fizz' if (num % 3).zero?
    result += 'buzz' if (num % 5).zero?
    result += num.to_s if num % 3 != 0 && num % 5 != 0
    result
  end
end
