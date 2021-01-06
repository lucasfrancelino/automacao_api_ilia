Quando('submeto a requisicao de lista das postagens') do
    @postagem = postagens.lista_postagens
end

Entao('vejo o status {string} da requisicao') do |status|
    expect(@postagem.response.code).to eql status
end

Entao('a lista com as postagens de cada usuários') do
    expect(@postagem.response.body).not_to be_empty
end

Quando('submeto a requisicao das postagens por id especifico') do
  @id = 8
  @postagem = postagens.lista_postagens_id(@id)
end

Entao('o corpo') do
    expect(@postagem.parsed_response['id']).to eql @id
end

Dado('que eu insiros os dados') do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando('submeto a requisicao de criar uma nova postagem') do
  pending # Write code here that turns the phrase above into concrete actions
end

Entao('o id {string}') do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Dado('que eu altero os dados') do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando('submeto a requisicao de alteracao da postagem com id {string}') do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Entao('o id que foi alterado') do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando('submeto a requisicao de delecao') do
  pending # Write code here that turns the phrase above into concrete actions
end