json.array!(@livros) do |livro|
  json.extract! livro, :id, :isbn, :titulo, :autor, :editora, :picture
  json.url livro_url(livro, format: :json)
end
