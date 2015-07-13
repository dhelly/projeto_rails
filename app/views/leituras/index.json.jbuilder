json.array!(@leituras) do |leitura|
  json.extract! leitura, :id, :titulo, :autor, :mes, :duracao, :observ, :user_id
  json.url leitura_url(leitura, format: :json)
end
