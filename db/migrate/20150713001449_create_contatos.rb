class CreateContatos < ActiveRecord::Migration
  def change
    create_table :contatos do |t|
      t.string :nome, null: false, default: ""
      t.string :email, null: false, default: ""
      t.text :mensagem, null: false, default: ""

      t.timestamps
    end
  end
end
