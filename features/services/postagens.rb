module Rest
    class Postagens
        include HTTParty

        headers 'Content-Type' => 'application/json'
        base_uri CONFIG['base_uri']

        def lista_postagens
            self.class.get('/posts')
        end
        
        def lista_postagens_id(id)
            self.class.get('/posts/'"#{id}")
        end

    end
end