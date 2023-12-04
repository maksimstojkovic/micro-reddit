class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

  validates :user, presence: true

  validates :title, presence: true
  validates :link, presence: true
  validates :body, presence: true
end
