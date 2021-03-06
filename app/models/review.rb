class Review < ApplicationRecord
  belongs_to :dragon
  belongs_to :user
  validates :rating, presence: true, numericality: { only_integer: true }, inclusion: { in: [1, 2, 3, 4, 5] }
  validates :content, presence: true
end
