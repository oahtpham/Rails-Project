class User < ApplicationRecord
  has_secure_password

  has_many :blogs, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  validates :user_name, uniqueness: true
  validates :user_name, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true

end
