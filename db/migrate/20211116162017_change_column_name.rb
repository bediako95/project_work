class ChangeColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :feedbacks, :name, :gardener_name
  end
end
