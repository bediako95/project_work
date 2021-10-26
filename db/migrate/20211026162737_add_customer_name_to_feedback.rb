class AddCustomerNameToFeedback < ActiveRecord::Migration[6.1]
  def change
    add_column :feedbacks, :customer_name, :string
  end
end
