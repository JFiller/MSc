class Contribution < ApplicationRecord
  belongs_to :user
  belongs_to :group
  has_many :subscriptions

  attr_accessor :name, :username, :content, :date, :user, :group, :type, :deleted

  def initialize name, content, user, group
    @name, @content, @user, @group = name, content, user, group
    @username = user.nickname
    t = Time.new
    t = Time.now
    @date = t
    @deleted = false

  end
end
