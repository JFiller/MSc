class Alertmessage < ApplicationRecord
  belongs_to :alert
  has_many :useralerts
end
