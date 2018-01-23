class User < ApplicationRecord
  has_many :userbadges
  has_many :contributions
  has_many :members
  has_many :subscriptions
  has_many :posts
  has_many :answeroptions
  has_many :alertsubscriptions
  has_many :useralerts

  attr_accessor :nickname, :firstname, :lastname, :password, :email, :registrationdate, :deleted

end
def initialize nickname, firstname, lastname, password, email
  @nickname, @firstname, @lastname, @password, @email = nickname, firstname,lastname, password,email
  t = Time.new
  t = Time.now
  @registrationdate = t
  @deleted = false
end

#Getter
def nickname
  @nickname
end
def nickname=(value)
  super(value)
end
def firstname
  @firstname
end
def lastname
  @lastname
end
def password
  @password
end
def email
  @email
end
def registrationdate
  @registrationdate
end
def deleted
  @deleted
end
