class ProductImage < ApplicationRecord

  belongs_to :product

  #attr_accessible :file

  #指定图片尺寸

  has_attached_file :image,:path => ":class/:attachment/:id/:basename.:extension", styles: {
    small: '60x60',
    middle: '200x200',
    big: "960x960"
  }

  validates :image, :attachment_presence => true

  #限制上传类型

  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  #限制上传图片的大小

  # validates_attachment_size :image, in: 0..5.megabytes



  # #attr_accessible :file
  # has_attached_file :file,
  #   :path => ":class/:attachment/:id/:basename.:extension"

  # validates :image, :attachment_presence => true


end
