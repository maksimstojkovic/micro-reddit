class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

  validates :user, presence: true

  validates :title, presence: true, length: { minimum: 2, maximum: 50 }
  validates :link, presence: true, length: { minimum: 2, maximum: 500 }
  validates :body, presence: true, length: { minimum: 2, maximum: 2000 }
end
