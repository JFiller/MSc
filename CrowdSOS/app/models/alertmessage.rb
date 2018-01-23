class Alertmessage < ApplicationRecord
  belongs_to :alert
  has_many :useralerts

  attr_accessor :alert, :description, :deleted

  def initialize alert, description
    @alert, @descprition = alert, description
    @deleted = false
  end

end
