module Rest
    class Postagens
        include HTTParty

        headers 'Content-Type' => 'application/json'
        base_uri CONFIG['base_uri']

        def listar_postagens
            self.class.get('/posts')
        end
        
        def listar_postagens_id(id)
            self.class.get('/posts/'"#{id}")
        end

        def dados
            @id = Faker::Number.decimal_part(digits: 2)
            @titulo = Faker::Games::Heroes.name
            @corpo = Faker::Lorem.paragraph
        end

        def incluir_nova_postagem
            dados = {
                "userId": "#{@id}",
                "title":  "#{@titulo}",
                "body":   "#{@corpo}"
            }.to_json

            self.class.post('/posts',
                            body: dados
        )
        end

        def alterar_postagem(idAlteracao)
            dados = {
                "userId": "#{@id}",
                "title":  "#{@titulo}",
                "body":   "#{@corpo}"
            }.to_json

            self.class.put('/posts/'"#{idAlteracao}",
                            body: dados
        )
        end

        def deletar_postagem(idDelecao)
            self.class.delete('/posts/'"#{idDelecao}")
        end

    end
end