require_relative '../solver'

RSpec.describe Solver do
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
end
