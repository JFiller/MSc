class Alert < ApplicationRecord
  has_many :alertsubscriptions
  has_many :alertmessages

  attr_accessor :type, :deleted

  def initialize type
    @type = type
    @deleted = false
  end
end
