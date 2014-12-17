class AddFieldsToParish < ActiveRecord::Migration
  def change
    add_column :parishes, :name, :string
    add_column :parishes, :pastor, :string
    add_column :parishes, :address_1, :string
    add_column :parishes, :address_2, :string
    add_column :parishes, :city, :string
    add_column :parishes, :state, :string
    add_column :parishes, :zip, :string
    add_column :parishes, :primary_phone, :string
    add_column :parishes, :primary_phone_type, :string
    add_column :parishes, :secondary_phone, :string
    add_column :parishes, :secondary_phone_type, :string
    add_column :parishes, :email, :string
    add_column :parishes, :secondary_email, :string
  end
end
