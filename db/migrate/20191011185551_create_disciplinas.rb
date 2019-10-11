class CreateDisciplinas < ActiveRecord::Migration[5.1]
  def change
    create_table :disciplinas do |t|
      t.string :nome
      t.string :codigo
      t.boolean :ativo

      t.timestamps
    end
    add_index :disciplinas, :nome
    add_index :disciplinas, :codigo, unique: true
  end
end
