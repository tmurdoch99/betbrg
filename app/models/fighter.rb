class Fighter < ActiveRecord::Base
   mount_uploader :picture, AvatarUploader
  attr_accessible :fight, :name, :picture, :ufc
end
