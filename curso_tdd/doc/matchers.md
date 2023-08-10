# Matchers
  - `gem rspec-expectations`
    - built in matchers
    - `expect().to` and `expect().not_to`

## Comparison Matchers
```ruby
  it '#equal' do
    x = "ruby"
    y = "ruby"
    expect(x).not_to equal(y) # false
    expect(x).to equal(x) # true
    # test if it is the same object `===` operator
  end

  it '#be' do
    x = "ruby"
    y = "ruby"
    expect(x).not_to be(y) # false
    expect(x).to be(x) # true
    # test if it is the same object `===` operator
  end

  it '#eql' do
    x = "ruby"
    y = "ruby"
    expect(x).to eql(y) # true
    # test if it have the same value `==` operator
  end

  it '#eq' do
    x = "ruby"
    y = "ruby"
    expect(x).to eq(x) # true
    # test if it have the same value `==` operator
  end

  it '#truthy' do
    expect(1.odd?).to be_truthy
  end

  it '#falsey' do
    expect(1.even?).to be_falsey
  end

  it '#be_nil' do
    expect(defined? x).to be_nil
  end

  it '>' do
    expect(5).to be > 1
  end

  it '>=' do
    expect(5).to be >= 2 
  end

  it '<' do
    expect(5).to < 6
  end

  it '<=' do
    expect(5).to <= 5
  end

  it '#be_between inclusive' do
    expect(5).to be_between(2, 7).inclusive
    # include 2 and 7
  end

  it '#be_between exclusive' do
    expect(5).to be_between(2, 7).exclusive
    # exclude 2 and 7
  end

  it '#match' do
    expect('fulano@com.br').to match(/..@../)
    # match with regex expression
  end

  it '#start_with' do
    expect('fulano de tal').to start_with('fulano')
    expect([1, 2, 3]).to start_with(1)
  end

  it '#end_with' do
    expect('fulano de tal').to end_with('tal')
    expect([1, 2, 3]).to end_with(3)
  end
```
