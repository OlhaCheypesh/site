class CreatePost2s < ActiveRecord::Migration[5.1]
  def change
    create_table :post2s do |t|
      t.integer :user_id
      t.string :title
      t.string :body

      t.timestamps
    end
  end
end
