require 'paperclip'

class Album < ActiveRecord::Base
  belongs_to :artist
  has_many :tracks
  validates_presence_of :name
  has_attached_file :photo, :styles => {:medium => "300x300", :thumb => "100x100>"}
  
  # Paperclip  
#  has_attached_file :photo, :styles => { 
#		:thumb => "100x100#",
#		:small => "150x150>",
#		:large => "400x400>" },
#    :url  => "/assets/albums/:id/:style/:basename.:extension",
#    :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"

#  validates_attachment_presence :photo
#  validates_attachment_size :photo, :less_than => 5.megabytes
#  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']
          
  def inspect
    "Album(#{name})"
  end
  
#  def photo
#    random_photo_to_show_for_now = %w(fear hendrix maxingquaye riding_with_the_king)[rand(4)]
#    Photo.new("/images/album_art/#{random_photo_to_show_for_now}.jpg")
#  end
  
#  class Photo < Struct.new(:url)
#  end

end
