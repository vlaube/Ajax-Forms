class Photo < ActiveRecord::Base

  belongs_to :post

  has_attached_file :document, :styles => { :medium => "300x300>", :thumb => "100x100>", :max => "600x600>" }
  
  validates_presence_of :title
  validates_attachment_size         :document, :less_than => 2.megabyte
  validates_attachment_content_type :document, :content_type => %w(image/png image/jpeg image/pjpeg image/gif image/tiff)
  validates_attachment_presence     :document
  
end
