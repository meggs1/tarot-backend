class AddIsAdminToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :first_visit, :boolean, :default => true
  end
end
