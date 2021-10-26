class AddClientIdToCustomers < ActiveRecord::Migration[6.1]
  def change
    add_column :customers, :client_id, :integer
    add_index :customers, :client_id
  end
end
