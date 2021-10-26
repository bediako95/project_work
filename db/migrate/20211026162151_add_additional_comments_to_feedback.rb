class AddAdditionalCommentsToFeedback < ActiveRecord::Migration[6.1]
  def change
    add_column :feedbacks, :addtional_comments, :string
  end
end
