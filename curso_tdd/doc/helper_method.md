# Helper Method
```ruby
# spec_helper.rb
require 'helper'

RSpec.configure do |config|
  config.include Helper
end

# spec/helper_methods/helper
module Helper
  def fruta
    %w(banana laranja uva).sample
  end
end

# spec
describe 'helper example' do
  it { expect(fruta).to eq('banana').or eq('laranja').or eq('uva') }
end
```
