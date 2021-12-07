class CreateLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t|
      t.string :location_name
      t.string :address
      t.string :city
      t.string :state
      t.integer :zipcode

      t.timestamps
    end
  end
end
