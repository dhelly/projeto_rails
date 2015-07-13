class CreateLeituras < ActiveRecord::Migration
  def change
    create_table :leituras do |t|
      t.string :titulo
      t.string :autor
      t.string :mes
      t.string :duracao
      t.string :observ
      t.integer :user_id

      add_foreign_key :users
      t.timestamps
    end
  end
end
