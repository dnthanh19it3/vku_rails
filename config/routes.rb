Rails.application.routes.draw do
    # Category
    get "/admin/login", to: "login#login"
    get "/admin/category", to: "admin#category_index", :as => :category_index
    get "/admin/category/create", to: "admin#category_create", :as => :taodanhmuc
    get "/admin/category/ajax_category", to: "admin#ajax_category", :as => :ajax_category
    post "/admin/category/store", to: "admin#category_store", :as => :category_store
    # CMS
    get "/admin/cms", to: "admin#cms_index", :as => :cms_index
    get "/admin/cms/create", to: "admin#cms_create", :as => :cms_create
    post "/admin/cms/store", to: "admin#cms_store", :as => :cms_store
    #VKU USER
    get "/", to: "vku#index", :as => :vku_index
    get "/baiviet/:slug", to: "vku#post_detail", :as => :vku_post_detail
    get "/browse/:slug", to: "vku#vku_browse", :as => :vku_browse
end