# Hooks

```ruby
# ---
# antes de toda suite de testes
before(:suite)

# depois de toda suite de testes
after(:suite)

# spec_helper.rb
RSpec.configure do |config|
  # suite
  config.before(:suite) do
    puts "antes de toda suite de teste"
  end

  config.after(:suite) do
    puts "depois de toda suite de teste"
  end
end
# ---

# ---
# antes de todos os testes de um arquivo ou do contexto
before(:all)
before(:context)

# depois de todos os testes de um arquivo ou do contexto
after(:all)
after(:context)

# spec_helper.rb
RSpec.configure do |config|
  # cada classe
  config.before(:all) do
    puts "antes de todos testes da classe"
  end

  config.after(:all) do
    puts "depois de todos testes da classe"
  end
end
# ---

# ---
# antes de cada teste de um arquivo
before(:each)
before(:example)

# depois de cada teste de um arquivo
after(:each)
after(:example)

# arquivo _spec.rb
before(:each) do
  puts "antes de cada teste"
end

after(:each) do
  puts "depois de cada teste"
end
# ---
```
