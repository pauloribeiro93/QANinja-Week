Dado("Login com {string} e {string}") do |email, senha|
  goto_login

  login_with(email, senha)
end

Dado("que eu gosto de muito de {string}") do |cat|
  find("a[href='/search/new']").click
  find("img[src$='#{cat.downcase}.png']").click  #passando como argumento
  #Downcase serve para dimunir a letra
end

Quando("toco a seguinte canção:") do |table|
  @parodi = table.rows_hash # com @ vai para todos os steps de validação

  find("a", text: @parodi[:banda]).click

  song = find(".song-item", text: @parodi[:parodia])
  song.find(".fa-play-circle").click #conceito de escopo
end

Então("essa paródia deve ficar em modo de reprodução") do
  song_play = find(".playing")
  expect(song_play).to have_text @parodi[:parodia]
end
