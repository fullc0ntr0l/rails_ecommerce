class Product < ActiveRecord::Base
  attr_accessible :link, :price, :title, :image

  has_attached_file :image, styles: { medium: '720x960' },
                            default_url: '/images/item-02.jpg'
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  validates :link, presence: true
  validates :title, presence: true, length: { minimum: 4, maximum: 48 }
  validates :price, presence: true
end
