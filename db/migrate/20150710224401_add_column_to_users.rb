class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :fname, :string
    add_column :users, :lname, :string
    add_column :users, :address, :string
    add_column :users, :apt, :string
    add_column :users, :zipcode, :string
    add_column :users, :country, :string
  end
end
