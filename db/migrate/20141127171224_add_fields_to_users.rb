class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :primary_phone, :string
    add_column :users, :primary_phone_type, :string
    add_column :users, :secondary_phone, :string
    add_column :users, :secondary_phone_type, :string
    add_column :users, :secondary_email, :string
    remove_column :users, :name
  end
end
