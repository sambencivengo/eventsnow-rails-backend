class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :event_name
      t.string :category
      t.text :description
      t.datetime :date
      t.references :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
