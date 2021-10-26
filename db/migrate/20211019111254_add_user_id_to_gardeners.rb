class AddUserIdToGardeners < ActiveRecord::Migration[6.1]
  def change
    add_column :gardeners, :user_id, :integer
    add_index :gardeners, :user_id
  end
end
