class Shipping < ActiveRecord::Base
  attr_accessible :description, :link, :title

  validates :title, presence: true, length: { minimum: 4, maximum: 48 }
  validates :description, presence: true, length: { minimum: 4, maximum: 48 }
end
