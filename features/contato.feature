# language:pt
Funcionalidade: Contato
    Para que eu possa contatar a Verity
    Sendo um cliente
    Posso acessar o site da verity e na parte “Contato” enviar um formulário para a Verity.
        
Cenario: Enviar contato
    Dado que eu acessei a home page da Verity 
    Quando eu clicar na opção de menu “Contato”
    E preencher os campos <nome>, <empresa>, <email>, <fone> e <mensagem>    
    E clicar no botão “Enviar”
    Então o site irá registrar o envio apresentando uma mensagem de que a mensagem foi enviada com sucesso <resultado>.

    Exemplos:
    | nome                  | empresa       | email                         | fone          | mensagem                                                      | resultado                         |
    | "Christophe Bartell"  | "RubyTeste"   | "cristophebartell@gmail.com"  | "21999998888" | "Teste em Ruby para processo seletivo em QA para a verity"    | "Mensagem enviada com sucesso!"   |
    