class AlterUsers < ActiveRecord::Migration[5.2]
  def change
    rename_table :users ,:admin_users
    add_column :admin_users,:username, :string, :limit => 30, :after => 'email'
    change_column :admin_users, :email, :string, :limit => 100
    rename_column :admin_users, :password, :hashed_password
    add_index :admin_users, :username

  end
end
