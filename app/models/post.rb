class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :category, optional: true
  belongs_to :user

  validates :title, presence: true
  validates :body, presence: true

end
