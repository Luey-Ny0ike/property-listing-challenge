class CreateProperties < ActiveRecord::Migration[6.1]
  def change
    create_table :properties do |t|
      t.string :name
      t.string :property_type
      t.text :description
      t.integer :bedrooms
      t.integer :bathrooms
      t.date :free_from

      t.timestamps
    end
  end
end
