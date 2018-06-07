class Slider < ActiveRecord::Base
  attr_accessible :button_text, :link, :promo_text, :title, :image

  has_attached_file :image, styles: { medium: '1920x570' },
                            default_url: '/images/master-slide-02.jpg'
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  validates :link, presence: true
  validates :title, presence: true, length: { minimum: 4, maximum: 48 }
  validates :promo_text, presence: true, length: { minimum: 4, maximum: 48 }
  validates :button_text, presence: true, length: { minimum: 4, maximum: 24 }
end
