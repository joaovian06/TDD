# string_nao_vazia_spec.rb
```ruby
require 'string_nao_vazia'

describe String do
  describe StringNaoVazia do
    it "Não esta vazia" do
      expect(subject).to eq("Não sou vazio")
      # subject nao implicito sempre prefere o describe mais interno
    end
  end
end
```

# string_nao_vazia.rb
```ruby
class StringNaoVazia < String
  def initialize
    self << "Não sou vazio"
  end
end
```
