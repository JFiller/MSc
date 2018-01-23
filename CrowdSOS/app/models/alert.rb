class Alert < ApplicationRecord
  has_many :alertsubscriptions
  has_many :alertmessages
end
