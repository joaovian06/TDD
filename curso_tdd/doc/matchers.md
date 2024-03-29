# Matchers
  - `gem rspec-expectations`
    - built in matchers
    - `expect().to` and `expect().not_to`
---

## #Comparison Matchers
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
---

## #Class and Type Matchers
```ruby
  it '#be_instance_of' do
    expect(10).to be_instance_of(Integer)
    # exactly the class
  end

  it '#be_kind_of' do
    expect(10).to be_kind_of(Integer)
    # can be inheritance
  end

  it '#respond_to' do
    expect('ruby'.to respond_to(:size))
    expect('ruby'.to respond_to(:count))
    # expect an object to respond to given method
  end

  it '#be_a / #be_an' do
    str = StringNaoVazia.new
    expect(str).to be_a(String)
    expect(str).to be_a(StringNaoVazia)
  end
```
---

## #Class attributes Matchers
```ruby
  it '#have_attributes' do
    person = Person.new
    person.name = 'Jackson'
    person.age = 10

    expect(person).to have_attributes(:name, :age)
    expect(person).to have_attributes(name: 'Jackson', age: 10)
    expect(person).to have_attributes(name: starting_with('J'), age: (be >= 5))
  end
```
---

## #Predicated Matchers
```ruby
  it '#be_odd' do
    expect(1).to be_odd
  end

  it '#be_even' do
    expect(2).to be_even
  end

  # work with every predicated method from ruby
```
---

## #Errors Matchers
```ruby
  it '#raise_exception' do
    expect { 3 / 0 }.to raise_exception
  end

  it '#raise_error' do
    expect { 3 / 0 }.to raise_error(ZeroDivisionError)
    expect { 3 / 0 }.to raise_error('divided by 0')
    expect { 3 / 0 }.to raise_error(ZeroDivisionError, 'divided by 0')
    expect { 3 / 0 }.to raise_error(/divided/)
  end
```
---

## #Array Matchers
```ruby
  it '#include' do
    expect(subject).to include(2)
    expect(subject).to include(2, 1)
  end

  it '#match_array' do
    expect(subject).to match_array([1, 2])
  end

  it '#contain_exactly' do
    expect(subject).to contain_exactly(1, 2)
    # nao permite usar o array ([1, 2]) -> (1, 2) * nao ordenado
  end
```
---

## #Range Matcher
```ruby
  it '#cover' do
    expect(subject).to cover(2)
    expect(subject).to cover(2, 5)
  end
```
---

## #Collection Matcher
```ruby
describe [1, 7, 9] do
  it { is_expected.to all (be_odd).and be_an(Integer) }
end
```
---

## #Be Within
```ruby
describe '#be_within' do
  it { expect(12.5).to be_within(0.5).of(12) }
  it { expect([11.6, 12.1, 12.4]).to all be_within(0.5).of(12) }
end

# checks if condition is in a defined range of given number
# delta 0.5
# 11.5 - 11.6 - 11.7 - 11.8 - 11.9 - 12 - 12.1 - 12.2 - 12.3 - 12.4 - 12.5
```
---

## #Satisfy
```ruby
describe '#satisfy' do
  it { expect(10).to satisfy { |x| x % 2 == 0 } }
  it "be a multiple of 3" do
    expect(9).to satisfy("be a multiple of 3") do |x|
      x % 3 == 0
    end
  end
end
```
---

## #Alias Matchers
  - alias to `start_with`
    - `a_string_starting_with` / `starting_with`

  - alias to `be`
    - `a_value`

  - alias to `be_a`
    - `be_an`

  - alias to 'contain_exactly'
    - `match_array`
