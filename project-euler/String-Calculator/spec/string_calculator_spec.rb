require '../string_calculator'
describe 'String Calculator' do
  context 'given a string input containing a number' do
    describe 'add_string' do
      it 'given a empty string input' do
        string_calc = StringCalculator.new
        expect(string_calc.add_string('')).to eq 0
      end
    end
  end
end
