class AddHighNameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :high_name, :string
  end
end
