class Member < ApplicationRecord
  belongs_to :mentoring
  belongs_to :user
end
