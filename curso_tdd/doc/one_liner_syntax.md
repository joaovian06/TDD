# One Liner Syntax
  - `is_expected` -> `subject`

```ruby
  it 'one line syntax subject' do
    expect(subject).to eq(expectation)
    is_expected.to eq(expectation)
  end

  # one line test sintax
  it { is_expected.to eq(expectation) }
```
