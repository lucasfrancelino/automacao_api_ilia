Quando('submeto a requisicao de lista das postagens') do
    @postagem = postagens.listar_postagens
end

Entao('vejo o status {string} da requisicao') do |status|
    expect(@postagem.response.code).to eql status
end

Entao('a lista com as postagens de cada usuários') do
    expect(@postagem.response.body).not_to be_empty
end

Quando('submeto a requisicao das postagens por id especifico') do
  @id = 8
  @postagem = postagens.listar_postagens_id(@id)
end

Entao('o corpo') do
    expect(@postagem.parsed_response['id']).to eql @id
end

Dado('que eu insiros os dados') do
  @postagem = postagens.dados
end

Quando('submeto a requisicao de criar uma nova postagem') do
    @postagem = postagens.incluir_nova_postagem
end

Entao('o novo id de criacao {int}') do |id|
    expect(@postagem.parsed_response['id']).to eql id
end

Dado('que eu altero os dados') do
    @postagem = postagens.dados
end

Quando('submeto a requisicao de alteracao da postagem com id {int}') do |idAlteracao|
    @postagem = postagens.alterar_postagem(idAlteracao)
end

Entao('o id que foi alterado') do
    expect(@postagem.parsed_response['id'])
end

Quando('submeto a requisicao de delecao com o seguinte id {int}') do |idDelecao|
    @postagem = postagens.deletar_postagem(idDelecao)
end