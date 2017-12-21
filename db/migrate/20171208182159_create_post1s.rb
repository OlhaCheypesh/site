class CreatePost1s < ActiveRecord::Migration[5.1]
  def change
    create_table :post1s do |t|
      t.integer :user_id
      t.string :title
      t.string :body

      t.timestamps
    end
  end
end
