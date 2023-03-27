class ChangeBreweriesTable < ActiveRecord::Migration[7.0]
  def change
    remove_column :breweries, :city, :string
    remove_column :breweries, :state, :string
    remove_column :breweries, :zip, :integer
    add_column :breweries, :website, :string
    add_column :breweries, :logo, :string
  end
end
