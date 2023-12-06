class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :user, presence: true
  validates :post, presence: true

  validates :body, presence: true, length: { minimum: 8, maximum: 500 }
end
