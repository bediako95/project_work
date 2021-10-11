class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :name
      t.integer :age
      t.string :course

      t.timestamps
    end
  end
end
