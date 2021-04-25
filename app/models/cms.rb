class Cms < ApplicationRecord
    mount_uploader :Avatar, AvatarUploader
    belongs_to :cms_category
    # attribute :cms_categories.Name_vi
    attr_accessor :Name_vi
end
