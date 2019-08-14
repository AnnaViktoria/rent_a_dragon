class Dragon < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  has_many :reviews, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :age, presence: true, format: { with: /\A\d+\z/, message: "Age should be a number." }
  validates :country_of_origin, presence: true
  validates :location, presence: true
end
