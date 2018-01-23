class Post < ApplicationRecord
  belongs_to :user

  attr_accessor :username, :user, :content, :date, :deleted, :vote_counter

  def initialize user,content
    @user, @content = user, content
    @username = user.nickname
    t = Time.new
    t = Time.now
    @date = t
    @deleted = false
    @vote_counter = 0
  end

end
