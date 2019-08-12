class Dragon < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :reviews
  validates :name, presence: true, uniqueness: true
  validates :age, presence: true, format: { with: /\A\d+\z/, message: "Age should be a number." }
  validates :country_of_origin, presence: true
  validates :location, presence: true
end
