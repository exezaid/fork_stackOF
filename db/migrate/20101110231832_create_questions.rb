class CreateQuestions < ActiveRecord::Migration
  def self.up
    create_table :questions do |t|
      t.text :question
      t.boolean :solved
      t.integer :positive_vote
      t.integer :negative_vote
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :questions
  end
end

