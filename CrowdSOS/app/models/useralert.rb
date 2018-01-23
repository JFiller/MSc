class Useralert < ApplicationRecord
  belongs_to :user
  belongs_to :alertmessage
end
