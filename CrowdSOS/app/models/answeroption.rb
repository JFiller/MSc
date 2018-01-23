class Answeroption < ApplicationRecord
  belongs_to :question
  belongs_to :user

  attr_accessor :question, :user, :content, :selected, :deleted

  def initialize question, user, content
    @question, @user, @content = question, user, content
    @selected, @deleted = false
  end
end
