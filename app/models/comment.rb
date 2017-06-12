class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :comment

  validates :body, presence: true
end
