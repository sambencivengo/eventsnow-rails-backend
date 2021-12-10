class AddZipcodeToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :zipcode, :integer
  end
end
