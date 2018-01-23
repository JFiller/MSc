class User < ApplicationRecord
  has_many :userbadges
  has_many :contributions
  has_many :members
  has_many :subscriptions
  has_many :posts
  has_many :answeroptions
  has_many :alertsubscriptions
  has_many :useralerts
end
