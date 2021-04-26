Rails.application.routes.draw do

    resources :users, only: [:new, :create]
    get 'login', to: 'sessions#new'
    post 'login', to: 'sessions#create'
    get 'welcome', to: 'sessions#welcome'
    get 'logout', to: 'sessions#destroy'
    get 'authorized', to: 'sessions#page_requires_login'

    get "/admin", to: "admin#index", :as => :admin_index
    get "/admin/category", to: "admin#category_index", :as => :category_index
    get "/admin/category/create", to: "admin#category_create", :as => :taodanhmuc
    post "/admin/category/store", to: "admin#category_store", :as => :category_store
    get "/admin/category/edit/:id", to: "admin#category_edit", :as => :category_edit
    get "/admin/category/delete/:id", to: "admin#category_drop", :as => :category_drop
    # CMS
    get "/admin/cms", to: "admin#cms_index", :as => :cms_index
    get "/admin/cms/create", to: "admin#cms_create", :as => :cms_create
    post "/admin/cms/store", to: "admin#cms_store", :as => :cms_store
    get "/admin/cms/edit/:slug", to: "admin#cms_edit", :as => :cms_edit
    post "/admin/cms/update/:slug", to: "admin#cms_update", :as => :cms_update
    get "/admin/cms/delete/:slug", to: "admin#cms_drop", :as => :cms_drop
    #VKU USER
    get "/", to: "vku#index", :as => :vku_index
    get "/baiviet/:slug", to: "vku#post_detail", :as => :vku_post_detail
    get "/browse/:slug", to: "vku#vku_browse", :as => :vku_browse
end