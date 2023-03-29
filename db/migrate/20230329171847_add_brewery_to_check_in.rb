class AddBreweryToCheckIn < ActiveRecord::Migration[7.0]
  def change
    add_column :check_ins, :brewery_id, :integer
  end
end
