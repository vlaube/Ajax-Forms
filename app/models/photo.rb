class Photo < ActiveRecord::Base

  belongs_to :post

  has_attached_file :document, :styles => { :medium => "300x300>", :thumb => "100x100>", :max => "600x600>" }
  
end
