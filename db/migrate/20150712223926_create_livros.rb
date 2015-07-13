class CreateLivros < ActiveRecord::Migration
  def change
    create_table :livros do |t|
      t.string :isbn
      t.string :titulo
      t.string :autor
      t.string :editora
      t.string :picture

      t.timestamps
    end
  end
end
