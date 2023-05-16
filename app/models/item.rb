# "Tops", "Pants", "T-shirt", "Skirts and Shorts","Jackets", "Coats", "Tailoring"
# Could add these to CATEGORY but keeping it small for now

class Item < ApplicationRecord
  has_many :bookings
  belongs_to :user
  CATEGORY = ["Wears", "Bags", "Accessories"]
  validates :category, inclusion: { in: CATEGORY }
  validates :brand, presence: true
  validates :price, presence: true
  validates :category, presence: true
  validates :name, presence: true
  validates :gender, presence: true
end
