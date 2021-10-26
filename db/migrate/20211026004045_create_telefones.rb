class CreateTelefones < ActiveRecord::Migration[6.1]
  def change
    create_table :telefones do |t|
      t.string :tipo
      t.string :numero
      t.references :pessoa, null: false, foreign_key: true

      t.timestamps
    end
  end
end
