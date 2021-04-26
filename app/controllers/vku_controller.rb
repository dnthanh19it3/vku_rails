class VkuController < ApplicationController
    skip_before_action :authorized, only: [:new, :create, :welcome, :index, :post_detail, :vku_browse]
    layout "vku"
    def index
        @headnew = Cms.where(Pin: 1).limit(5)
        @othernew = Cms.all.order("created_at DESC").limit(5)
        @annoument = Cms.joins(:cms_category).where(:cms_categories => {:ParentID => 123}).limit(7)
        @carousel = Cms.where(Banner: 1).limit(4)
        render "vku/index/index"
    end
    def post_detail
        @post = Cms.joins(:cms_category).find_by(Slug_vi: params[:slug])
        @post.ViewCount += 1
        @post.save
        @headnew = Cms.where(Pin: 1).limit(5)
        render "vku/post/detail"
    end
    def vku_browse
        @post = Cms.joins(:cms_category).where(:cms_categories => {:Slug_vi => params[:slug]})
        render "vku/browse/index"
    end
end
