class CreateValuations < ActiveRecord::Migration[6.1]
  def change
    create_table :valuations do |t|
      t.decimal :value, precision: 10, scale: 2
      t.references :property, null: false, foreign_key: true

      t.timestamps
    end
  end
end
