class CreatePostcomment1s < ActiveRecord::Migration[5.1]
  def change
    create_table :postcomment1s do |t|
      t.integer :user_id
      t.integer :post1_id
      t.string :text

      t.timestamps
    end
  end
end
