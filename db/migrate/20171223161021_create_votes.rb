class CreateVotes < ActiveRecord::Migration[5.1]
  def change
    create_table :votes do |t|
      t.string :commenter
      t.text :body
      t.reference :post

      t.timestamps
    end
  end
end
