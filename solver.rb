
class Solver
    def factorial(n)
      raise ArgumentError, "Factorial input must be a non-negative integer" unless n.is_a?(Integer) && n >= 0
  
      return 1 if n.zero?
  
      (1..n).reduce(:*)
    end

    def reverse(word)
        word.reverse
      end
      
      def fizzbuzz(n)
        return 'fizzbuzz' if (n % 3).zero? && (n % 5).zero?
        return 'fizz' if (n % 3).zero?
        return 'buzz' if (n % 5).zero?
        n.to_s
      end
  end
  