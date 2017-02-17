class CreateMedicaments < ActiveRecord::Migration[5.0]
  def change
    create_table :medicaments do |t|
      t.string :name
      t.string :description
      t.string :brand
      t.float :price
      t.references :disease, foreign_key: true

      t.timestamps
    end
  end
end
