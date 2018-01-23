class Badge < ApplicationRecord
  has_many :userbadges

  attr_accessor :name, :deleted

  def initialize name
    @name = name
    @deleted = false
  end
end
