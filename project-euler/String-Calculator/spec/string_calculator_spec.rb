require '../string_calculator'
describe 'String Calculator' do
  context 'given a string input containing a number' do
    describe 'add_string' do
      it 'given a empty string input, return must be equal 0' do
        string_calc = StringCalculator.new
        expect(string_calc.add_string('')).to eq 0
      end
      it 'give a string containing a single value, return must be equal to the value' do
        string_calc = StringCalculator.new
        expect(string_calc.add_string('1')).to eq 1
      end
    end
  end
end
