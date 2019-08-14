class Dragon < ApplicationRecord

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  mount_uploader :photo, PhotoUploader

  belongs_to :user
  has_many :reviews, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :age, presence: true, format: { with: /\A\d+\z/, message: "Age should be a number." }
  validates :country_of_origin, presence: true
  validates :location, presence: true

end
