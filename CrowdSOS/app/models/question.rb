class Question < ApplicationRecord
  has_many :answeroptions

  attr_accessor :question, :deleted

  def initialize question
    @question = question
    @deleted = false
  end
end
