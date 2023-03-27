class CreateCheckIns < ActiveRecord::Migration[7.0]
  def change
    create_table :check_ins do |t|
      t.integer :beer_id
      t.integer :user_id
      t.integer :rating
      t.string :image
      t.string :comment

      t.timestamps
    end
  end
end
