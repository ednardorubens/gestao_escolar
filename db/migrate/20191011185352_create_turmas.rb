class CreateTurmas < ActiveRecord::Migration[5.1]
  def change
    create_table :turmas do |t|
      t.string :nome
      t.string :codigo
      t.boolean :ativo

      t.timestamps
    end
    add_index :turmas, :nome
    add_index :turmas, :codigo, unique: true
  end
end
