class Solver
  def factorial(number)
    raise ArgumentError, 'Factorial input must be a non-negative integer' unless number.is_a?(Integer) && number >= 0

    return 1 if number.zero?

    (1..number).reduce(:*)
  end

  def reverse(word)
    word.reverse
  end
end
