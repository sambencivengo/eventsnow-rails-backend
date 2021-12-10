class CreateAttendances < ActiveRecord::Migration[6.1]
  def change
    create_table :attendances do |t|
      t.references :user, null: false, foreign_key: {on_delete: :cascade}
      t.references :event, null: false, foreign_key: {on_delete: :cascade}

      t.boolean :host

      t.timestamps
    end
  end
end
