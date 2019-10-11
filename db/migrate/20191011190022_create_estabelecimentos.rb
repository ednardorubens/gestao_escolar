class CreateEstabelecimentos < ActiveRecord::Migration[5.1]
  def change
    create_table :estabelecimentos do |t|
      t.string :nome
      t.string :endereco
      t.boolean :ativo

      t.timestamps
    end
    add_index :estabelecimentos, :nome
  end
end
