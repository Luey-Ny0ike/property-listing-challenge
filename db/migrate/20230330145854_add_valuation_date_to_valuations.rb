class AddValuationDateToValuations < ActiveRecord::Migration[6.1]
  def change
    add_column :valuations, :valuation_date, :date
  end
end
