class CreatePostcomment2s < ActiveRecord::Migration[5.1]
  def change
    create_table :postcomment2s do |t|
      t.integer :user_id
      t.integer :post2_id
      t.string :text

      t.timestamps
    end
  end
end
