json.array!(@contatos) do |contato|
  json.extract! contato, :nome, :email, :mensagem
  json.url contato_url(contato, format: :json)
end
