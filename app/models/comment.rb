class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :city
  has_many :feedbacks
end
