class CmsCategory < ApplicationRecord
    has_many :cms
    attribute :child
end
