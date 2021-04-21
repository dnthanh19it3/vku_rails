class CmsCategory < ApplicationRecord
    belongs_to :cms_categories
    has_many :cms_categories
end
