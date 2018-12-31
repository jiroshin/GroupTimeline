class AddJuniorNameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :junior_name, :string
  end
end
