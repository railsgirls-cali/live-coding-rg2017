class AddDiseaseIdToRecipes < ActiveRecord::Migration[5.0]
  def change
    add_column :recipes, :disease_id, :integer
  end
end
