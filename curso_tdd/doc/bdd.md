# BDD - Behaviour Driven Development
  - Dan North/2003
  - dificuldade para ensinar TDD

  - duvidas
    - por onde comecar
    - o que testar
    - qual nome dar para o teste
  
  - principal motivo
    - nao e testar
    - sim especificar
      - exemplos de como usar o software
      - permitir que isso guie o design do software
  
  - Abordagem de desenvolvimento de software

  - suite de testes automatizado
    - consequencia do processo

  - Teste -> Comportamento
  - JBehave
    - Cucumber
    - BDD Gem

  - Permite que o cliente participe da especificao dos cenarios

  - exemplo
    Feature, alerta de recebimento
      para comprar um produto indisponivel no momento
      como um cliente do site
      quero ser notificado quando um produto voltar a fica disponivel
      cenario, receber notificacao
        ## given dado um usuario logado
        e usuario esta cadastrado no site
        ## when quando usuario confirma recebimento do alerta
        ## then entao alerta e criado para envio de email
