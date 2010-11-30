class CreateAnswer < ActiveRecord::Migration
  def self.up
    create_table :answers do |t|
      t.string :body
      t.integer :question_id
      t.integer :positive_vote
      t.integer :negative_vote
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :answers
  end
end

