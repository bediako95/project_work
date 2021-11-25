class AddServiceToCustomer < ActiveRecord::Migration[6.1]
  def change
    add_column :customers, :service, :string
  end
end
