class AddRoleUserToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :role_user, :string
  end

  def self.down
    remove_column :users, :role_user
  end
end
