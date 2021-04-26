class AdminController < ApplicationController
    include AdminHelper
    layout "master"
    before_action :check_login
    skip_before_action :check_login, only: [:login, :register, :index, :detail, :browse]
    
    # Helpler
    def login
        
    end
    def register

    end
    def check_login
        if(session[:user_id] == nil)
            redirect_to admin_login_path
        end
    end
    # Index
    def index
        render "admin/index/index"
    end
    def category_index
        # @categories = CmsCategory.joins("INNER JOIN cms_categories a ON cms_categories.ParentID = a.id")
        @categories = CmsCategory.find_by_sql("SELECT a.id, a.Name_vi, b.Slug_vi, b.Name_vi as 'danh_muc_cha' FROM  cms_categories a INNER JOIN cms_categories b ON b.id = a.ParentID")
        # @categories = CmsCategory.all
        # i = 0
        # @categories.each do |cm|
        #     if(parent = CmsCategory.find_by_id(cm.ParentID))
        #         @categories[i].parent = parent.Name_vi
        #         i += 1
        #     else
        #         @categories[i].parent = "N/A"
        #         i += 1
        #     end
        # end
        @categoriesNest = createNested(CmsCategory.all, 0)
        render "admin/CmsCategory/index"
        # render json: @categories
    end
    def category_create
        @categoriesNest = createNested(CmsCategory.all, 0)
        render "admin/CmsCategory/create"
    end

    # CRUD
    def category_store
        @abc = CmsCategory.new(Name_vi: params[:Name_vi], Name_en: params[:Name_en], Slug_vi: params[:Slug_vi], Slug_en: params[:Slug_en], ParentID: params[:CategoryID], Index: 1)
        if @abc.save
            ActionMsg(1)
            redirect_to category_index_path
            
        else
            ActionMsg(0)
            redirect_to category_index_path
        end
    end
    def category_edit
        @category = CmsCategory.find_by(:id => params[:id])
        @categoriesNest = createNested(CmsCategory.all, 0)
        # render json: @category
        render "admin/CmsCategory/edit"
    end
    def category_update
        cate = CmsCategory.find_by(id: params[:id])
        cate.Name_vi = params[:Name_vi]
        cate.Name_en = params[:Name_en]
        cate.Slug_vi = params[:Slug_vi]
        cate.Slug_en = params[:Slug_en]
        cate.ParentID = params[:CategoryID]
 
        if cate.save
            ActionMsg(1)
            redirect_to category_index_path
            
        else
            ActionMsg(0)
            redirect_to category_index_path
        end
    end

    def category_drop
        if CmsCategory.destroy_by(id: params[:id])
            ActionMsg(1)
            redirect_to category_index_path
        else
            ActionMsg(0)
            redirect_to category_index_path
        end
    end

    def createNested(categories, parentid)
        i = 0
        result = Array.new
        categories.each do |category|
            if (parentid == category.ParentID)
                nextParentID = category.id
                category['child'] = createNested(categories, nextParentID)
                if category['child'] == ''
                    category.remove('child')
                end
                result.push(category)
            end
        end
        return result
    end
    # CMS ROUTE
    def cms_index
        @cms = Cms.paginate(:page => params[:page], :per_page => 20).order('created_at desc')
        render "admin/Cms/index"
        # render json: @cms
    end
    def cms_create
        @categoriesNest = createNested(CmsCategory.all, 0)
        render "admin/Cms/create"
    end
    def cms_store
        cm = Cms.new
        cm.cms_category_id = params[:CategoryID]
        cm.MetaTitle = params[:MetaTitle]
        cm.MetaDescription = params[:MetaDescription]
        cm.MetaKeyword = params[:MetaKeyword]
        cm.Slug_vi = params[:Slug_vi]
        cm.Slug_en = params[:Slug_en]
        cm.Title_vi = params[:Title_vi]
        cm.Title_en = params[:Title_en]
        cm.Avatar  = params[:Avatar]
        cm.SimpleContent_vi = params[:SimpleContent_vi]
        cm.SimpleContent_en = params[:SimpleContent_en]
        cm.Content_vi = params[:Content_vi]
        cm.Content_en = params[:Content_en]
        cm.Status = params[:Status]
        cm.Pin = params[:Pin]
        cm.Banner = params[:Banner]
        cm.Author = 1
        cm.Tags = params[:Tags]

        if cm.save
            ActionMsg(1)
            redirect_to cms_index_path
        else
            ActionMsg(0)
            redirect_to cms_index_path
        end
    end
    def cms_edit
        @cm = Cms.joins(:cms_category).find_by(:cms => {:Slug_vi => params[:slug]})
        @categoriesNest = createNested(CmsCategory.all, 0)
        render "admin/Cms/edit"
        # render json: @cm
    end
    def cms_update
        cm = Cms.find_by(Slug_vi: params[:slug])

        cm.cms_category_id = params[:CategoryID]
        cm.MetaTitle = params[:MetaTitle]
        cm.MetaDescription = params[:MetaDescription]
        cm.MetaKeyword = params[:MetaKeyword]
        cm.Slug_vi = params[:Slug_vi]
        cm.Slug_en = params[:Slug_en]
        cm.Title_vi = params[:Title_vi]
        cm.Title_en = params[:Title_en]
        if params[:Avatar] != nil
            cm.Avatar  = params[:Avatar]
        end
        cm.SimpleContent_vi = params[:SimpleContent_vi]
        cm.SimpleContent_en = params[:SimpleContent_en]
        cm.Content_vi = params[:Content_vi]
        cm.Content_en = params[:Content_en]
        cm.Status = params[:Status]
        cm.Pin = params[:Pin]
        cm.Banner = params[:Banner]
        cm.Author = 1
        cm.Tags = params[:Tags]

        if cm.save
            ActionMsg(1)
            redirect_to cms_index_path
        else
            ActionMsg(0)
            redirect_to cms_index_path
        end
    end
    def cms_drop
        if Cms.destroy_by(Slug_vi: params[:slug])
            ActionMsg(1)
            redirect_to cms_index_path
            
        else
            ActionMsg(0)
            redirect_to cms_index_path
        end
    end
end
