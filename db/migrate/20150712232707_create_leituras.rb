class CreateLeituras < ActiveRecord::Migration
  def change
    create_table :leituras do |t|
      t.string :titulo, null: false, default: ""
      t.string :autor, null: false, default: ""
      t.string :mes, null: false, default: ""
      t.string :duracao, null: false, default: ""
      t.string :observ, null: false, default: ""
      t.integer :user_id, index: true  , foreign_key: true


      t.timestamps
    end
  end
end
