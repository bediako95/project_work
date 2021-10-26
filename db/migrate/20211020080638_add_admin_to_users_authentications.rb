class AddAdminToUsersAuthentications < ActiveRecord::Migration[6.1]
  def change
    add_column :users_authentications, :admin, :boolean
  end
end
