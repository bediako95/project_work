class AddPhoneNumberToFeedback < ActiveRecord::Migration[6.1]
  def change
    add_column :feedbacks, :phone_number, :string
  end
end
