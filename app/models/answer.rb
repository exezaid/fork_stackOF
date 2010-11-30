class Answer < ActiveRecord::Base
  belongs_to :question
  belongs_to :user

  def positive_vote!
    update_attribute(:positive_vote, positive_vote+1)
  end

  def negative_vote!
    update_attribute(:negative_vote, negative_vote+1)
  end
end

