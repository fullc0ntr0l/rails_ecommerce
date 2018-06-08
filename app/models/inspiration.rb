class Inspiration < ActiveRecord::Base
  attr_accessible :content, :link, :title, :image

  has_attached_file :image, styles: { medium: '720x539' },
                            default_url: '/images/blog-02.jpg'
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  validates :link, presence: true
  validates :title, presence: true, length: { minimum: 4, maximum: 96 }
  validates :content, presence: true, length: { minimum: 10, maximum: 255 }
end
