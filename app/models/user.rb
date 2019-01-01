class User < ApplicationRecord
  has_many :blogs, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  validates :user_name, uniqueness: true
  validates :user_name, presence: true
  validate :two_letters

  def two_letters
    if self.full_name.split(" ").length != 2
      errors.add(:full_name, "must only be two words")
    end
  end

end
