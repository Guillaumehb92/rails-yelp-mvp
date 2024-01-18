class Restaurant < ApplicationRecord
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

  has_many :reviews
  validates :name, presence: true
  validates :category, inclusion: { in: CATEGORIES }
  validates :address, presence: true
  validates :category, presence: true
end
