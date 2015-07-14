class CreateLivros < ActiveRecord::Migration
  def change
    create_table :livros do |t|
      t.string :isbn, null: false, default: ""
      t.string :titulo, null: false, default: ""
      t.string :autor, null: false, default: ""
      t.string :editora, null: false, default: ""
      t.string :picture, null: false, default: ""

      t.timestamps
    end
  end
end
