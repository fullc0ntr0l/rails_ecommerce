class Inspire < ActiveRecord::Base
  attr_accessible :content, :image_url, :link, :title

  validates :image_url, presence: true
  validates :link, presence: true
  validates :title, presence: true, length: { minimum: 4, maximum: 96 }
  validates :content, presence: true, length: { minimum: 10, maximum: 255 }
end
