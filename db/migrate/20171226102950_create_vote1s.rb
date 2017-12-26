class CreateVote1s < ActiveRecord::Migration[5.1]
  def change
    create_table :vote1s do |t|
      t.integer :user_id
      t.integer :postcomment1_id

      t.timestamps
    end
  end
end
