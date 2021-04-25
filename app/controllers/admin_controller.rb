class AdminController < ApplicationController
    include AdminHelper
    layout "master"
    # Helpler
    def cms_params
        params.require(:cms).permit(:image)
    end
    # Index
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
        @categoriesNest = createNested(CmsCategory.all, 0)
        render "admin/CmsCategory/create"
    end
    def ajax_category
        # categories = CmsCategory.all
        # abc = createNested(categories, 0)
        # eeb = CmsCategory.create(Name_vi: "Haha", Name_en: "Hihi", Slug_vi: "Hehe", Slug_en: "hehe", ParentID: 0, Index: 1)
        # render json: eeb
        # eeb.save
        render json: eeb
        
    end

    # CRUD
    def category_store
        @abc = CmsCategory.new(Name_vi: params[:Name_vi], Name_en: params[:Name_en], Slug_vi: params[:Slug_vi], Slug_en: params[:Slug_en], ParentID: params[:CategoryID], Index: 1)
        if @abc.save
            ActionMsg(1)
            redirect_to category_index_path
            
        else
            ActionMsg(0)
            render plain: "FAILED"
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

        # uploader = AvatarUploader.new
        # imgpath = uploader.store!()
        # uploader.retrieve_from_store!(imgpath)

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

        render plain: cm.save
    end
    def cms_params
        params.require(:cms).permit(:cms_categories_id, :MetaTitle, :MetaDescription, :MetaKeyword, :Slug_vi, :Slug_en, :Title_vi, :Title_en, :Avatar, :SimpleContent_vi, :SimpleContent_en, :Content_vi, :Content_en, :Status, :Pin, :Banner, :Author, :Tags)
    end

end
