class AddParishIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :parish_id, :integer
  end
end
