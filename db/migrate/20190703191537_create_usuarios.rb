class CreateUsuarios < ActiveRecord::Migration[5.1]
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.string :email
      t.string :password_digest
      t.boolean :ativo

      t.timestamps
    end
    add_index :usuarios, :nome
    add_index :usuarios, :email, unique: true
  end
end
