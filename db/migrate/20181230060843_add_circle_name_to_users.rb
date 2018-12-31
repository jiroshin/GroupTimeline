class AddCircleNameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :circle_name, :string
  end
end
