class CreateFurnishings < ActiveRecord::Migration[6.1]
  def change
    create_table :furnishings do |t|
      t.references :property, null: false, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
