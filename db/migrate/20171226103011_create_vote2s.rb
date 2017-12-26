class CreateVote2s < ActiveRecord::Migration[5.1]
  def change
    create_table :vote2s do |t|
      t.integer :user_id
      t.integer :postcomment2_id

      t.timestamps
    end
  end
end
