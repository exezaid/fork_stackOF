module QuestionsHelper
  def user_from_email(email)
    email.gsub(/(@.*)/, "")
  end
end

