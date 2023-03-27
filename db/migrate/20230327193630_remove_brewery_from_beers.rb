class RemoveBreweryFromBeers < ActiveRecord::Migration[7.0]
  def change
    rename_column :beers, :brewery, :brewery_id
  end
end
