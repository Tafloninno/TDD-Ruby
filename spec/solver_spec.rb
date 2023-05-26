require_relative '../solver'

describe Solver do
  let(:solver) { Solver.new }

  describe '#factorial' do
    it 'returns 1 when given 0' do
      expect(solver.factorial(0)).to eq(1)
    end

    it 'returns the correct factorial for a positive number' do
      expect(solver.factorial(5)).to eq(120)
      expect(solver.factorial(10)).to eq(3_628_800)
    end

    it 'raises an exception for negative numbers' do
      expect { solver.factorial(-5) }.to raise_error(ArgumentError, 'Factorial input must be a non-negative integer')
    end

    it 'raises an exception for non-integer inputs' do
      expect { solver.factorial(3.5) }.to raise_error(ArgumentError, 'Factorial input must be a non-negative integer')
      expect { solver.factorial('abc') }.to raise_error(ArgumentError, 'Factorial input must be a non-negative integer')
    end
  end

  describe '#reverse' do
    it 'reverses the given word' do
      expect(solver.reverse('hello')).to eq('olleh')
      expect(solver.reverse('world')).to eq('dlrow')
    end
  end

  describe '#fizzbuzz' do
    it 'returns "fizz" when given a number divisible by 3' do
      expect(solver.fizzbuzz(3)).to eq('fizz')
      expect(solver.fizzbuzz(9)).to eq('fizz')
    end

    it 'returns "buzz" when given a number divisible by 5' do
      expect(solver.fizzbuzz(5)).to eq('buzz')
      expect(solver.fizzbuzz(20)).to eq('buzz')
    end

    it 'returns "fizzbuzz" when given a number divisible by both 3 and 5' do
      expect(solver.fizzbuzz(15)).to eq('fizzbuzz')
      expect(solver.fizzbuzz(30)).to eq('fizzbuzz')
    end

    it 'returns the number as a string for any other case' do
      expect(solver.fizzbuzz(7)).to eq('7')
      expect(solver.fizzbuzz(11)).to eq('11')
    end
  end
end
