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
  end
end
