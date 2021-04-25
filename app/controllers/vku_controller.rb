class VkuController < ApplicationController
    layout "vku"
    def index
        @headnew = Cms.where(Pin: 1).limit(5)
        @othernew = Cms.all.order("created_at DESC").limit(5)
        @annoument = Cms.joins(:cms_category).where(:cms_categories => {:ParentID => 123}).limit(7)
        
        # render json: @annoument
        render "vku/index/index"
    end
    def post_detail
        @post = Cms.joins(:cms_category).find_by(Slug_vi: params[:slug])
        @headnew = Cms.where(Pin: 1).limit(5)
        # render json: @post
        render "vku/post/detail"
    end
    def vku_browse
        @post = Cms.joins(:cms_category).where(:cms_categories => {:Slug_vi => params[:slug]})
        render "vku/browse/index"
    end
end
