class Cms < ApplicationRecord
    mount_uploader :Avatar, AvatarUploader
    belongs_to :cms_category
    attr_accessor :Name_vi
end
