class Member < ApplicationRecord
  belongs_to :mentoring
  belongs_to :user

  attr_accessor :mentoring, :user, :role, :deleted

  def initialize mentoring, user, role
    @mentoring, @user, @role = mentoring, user, role
    @deleted = false

  end
end
