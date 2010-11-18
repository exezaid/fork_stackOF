class CambioADefault0 < ActiveRecord::Migration
  def self.up
    change_column_default :answers, :positive_vote, 0
    change_column_default :answers, :negative_vote, 0
    change_column_default :questions, :positive_vote, 0
    change_column_default :questions, :negative_vote, 0
  end

  def self.down
    change_column_default :answers, :positive_vote, nil
    change_column_default :answers, :negative_vote, nil
    change_column_default :questions, :positive_vote, nil
    change_column_default :questions, :negative_vote, nil
  end
end

