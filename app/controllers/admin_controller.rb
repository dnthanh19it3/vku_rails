class AdminController < ApplicationController
    layout "master"

    def index
        render "admin/layout/master"
    end
    def category_index
        # @categories = CmsCategory.joins("INNER JOIN cms_categories a ON cms_categories.ParentID = a.id")
        @categories = CmsCategory.find_by_sql("SELECT a.Name_vi, b.Slug_vi, b.Name_vi as 'danh_muc_cha' FROM  cms_categories a INNER JOIN cms_categories b ON b.id = a.ParentID")
        render "admin/CmsCategory/index"
        # render json: @categories
    end
    def category_create
        render "admin/CmsCategory/create"
    end
end
