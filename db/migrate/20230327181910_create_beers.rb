class CreateBeers < ActiveRecord::Migration[7.0]
  def change
    create_table :beers do |t|
      t.string :name
      t.string :brewery
      t.string :style
      t.float :abv

      t.timestamps
    end
  end
end
