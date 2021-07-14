Dado("que eu acesso pagina Login") do
  goto_login
end

Quando("submeto minhas credencias com: {string} e {string}") do |email, senha|
  login_with(email, senha)
end

Então("devo ver a mensagem de erro: {string}") do |expect_message|
  expect(login_alert).to eql expect_message
end
