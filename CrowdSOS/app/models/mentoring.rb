class Mentoring < ApplicationRecord
  has_many :members

  attr_accessor :name, :description, :date, :deleted

  def initialize name, description
    @name, @description = name, description
    t = Time.new
    t = Time.now
    @date = t
    @deleted = false
  end
end
