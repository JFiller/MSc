class Subscription < ApplicationRecord
  belongs_to :user
  belongs_to :contribution

end
