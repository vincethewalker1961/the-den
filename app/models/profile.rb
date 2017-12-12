class Profile < ActiveRecord::Base
    belongs_to :user 
    mount_uploader :picture, PictureUploader
    validate  :picture_size
    
    
    private
    # Validates the size of the uploaded picture.
    def picture_size
       if picture.size > 5.megabytes
           errors.add(:picture, "Hey! this picture should be less than 5MB")
       end
    end
    
end