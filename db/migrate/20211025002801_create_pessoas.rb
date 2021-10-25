class CreatePessoas < ActiveRecord::Migration[6.1]
  def change
    create_table :pessoas do |t|
      t.string :nome
      t.integer :idade
      t.string :cpf

      t.timestamps
    end
  end
end
