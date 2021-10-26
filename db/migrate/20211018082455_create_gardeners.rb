class CreateGardeners < ActiveRecord::Migration[6.1]
  def change
    create_table :gardeners do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :residential_address

      t.timestamps
    end
  end
end
