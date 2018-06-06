class Product < ActiveRecord::Base
  attr_accessible :image_url, :link, :price, :title

  validates :image_url, presence: true
  validates :link, presence: true
  validates :title, presence: true, length: { minimum: 4, maximum: 48 }
  validates :price, presence: true
end
