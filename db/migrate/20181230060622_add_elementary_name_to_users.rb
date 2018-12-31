class AddElementaryNameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :elementary_name, :string
  end
end
