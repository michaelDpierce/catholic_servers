class AddAdminContactToParishes < ActiveRecord::Migration
  def change
    add_column :parishes, :admin_name, :string
    add_column :parishes, :admin_email, :string
    add_column :parishes, :admin_email_type, :string
    add_column :parishes, :admin_primary_phone, :string
    add_column :parishes, :admin_primary_phone_type, :string
  end
end
