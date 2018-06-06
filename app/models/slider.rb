class Slider < ActiveRecord::Base
  attr_accessible :button_text, :image_url, :link, :promo_text, :title

  validates :image_url, presence: true
  validates :link, presence: true
  validates :title, presence: true, length: { minimum: 4, maximum: 48 }
  validates :promo_text, presence: true, length: { minimum: 4, maximum: 48 }
  validates :button_text, presence: true, length: { minimum: 4, maximum: 24 }
end
