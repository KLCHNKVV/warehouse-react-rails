class Product < ApplicationRecord

  validates :product_type, presence: true, length: {minimum: 2, maximum: 25}
  validates :product_model_name, presence: true, length: {minimum: 2, maximum: 25}
  validates_numericality_of :price, greater_than: 0, only_integer: true
  validates :brand, presence: true, length: {minimum: 2, maximum: 15}

  has_attached_file :image, styles: {large: '600x600', medium: '300x300', small: '130x130'},
                    :default_url => ':rails_root/system/:class/:attachment/:filename'
  validates_attachment :image
  validates_attachment_content_type :image, :content_type => /^image\/(png|jpeg)/
  validates :image, attachment_presence: true, presence: true

end
