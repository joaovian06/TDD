# Expect Composition
```ruby
  describe "Ruby on Rails" do
    let(:fruits) { %w(banana laranja uva) }

    it { is_expected.to start_with("Ruby").and end_with("Rails") }
    it { expect(fruits).to eq("banana").or eq("laranja").or eq("uva") }
  end
```
