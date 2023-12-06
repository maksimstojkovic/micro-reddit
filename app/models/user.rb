class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy

  validates :username, presence: true, uniqueness: true, length: { minimum: 2, maximum: 20 }
  validates :email, presence: true, uniqueness: true, length: { minimum: 2, maximum: 100 }
  validates :password, presence: true, length: { minimum: 2, maximum: 100 }
end
