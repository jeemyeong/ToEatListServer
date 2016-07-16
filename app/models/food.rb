class Food < ActiveRecord::Base
    mount_uploader :image_file, ImageFileUploader
    has_many :bookmarks

end
