require '../string_calculator'
describe 'String Calculator' do
  context 'given a string input containing a number' do
    describe 'add_string' do
      it 'given a empty string input, return must be equal 0' do
        string_calc = StringCalculator.new
        expect(string_calc.add_string('')).to eq 0
      end
      it 'given a string containing a single value, return must be equal to the value' do
        string_calc = StringCalculator.new
        expect(string_calc.add_string('1')).to eq 1
      end
      it 'given a string containing tow values, return must be equal the sum of these values ' do
        string_calc = StringCalculator.new
        expect(string_calc.add_string('1,2')).to eq 3
      end
    end
  end
end
