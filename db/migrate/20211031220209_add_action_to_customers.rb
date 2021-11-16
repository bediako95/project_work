class AddActionToCustomers < ActiveRecord::Migration[6.1]
  def change
    add_column :customers, :actions, :string
    add_index :customers, :actions
  end
end
