Dado('que eu acessei a home page da Verity') do
    @page_contato.clicarMenu
end
  
Quando('eu clicar na opção de menu “Contato”') do
    @page_contato.clicarBotaoContato
end
  
Quando('preencher os campos {string}, {string}, {string}, {string} e {string}') do |nome, empresa, email, fone, mensagem|
    @page_contato.preencherCamposContatos(nome, empresa, email, fone, mensagem)
end
  
Quando('clicar no botão “Enviar”') do
    @page_contato.clicarBotaoEnviar
end
  
Então('o site irá registrar o envio apresentando uma mensagem de que a mensagem foi enviada com sucesso {string}.') do |resultado|
    expect(@page_contato.mensagemRetorno).to eql resultado
end
