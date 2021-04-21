Rails.application.routes.draw do
    resource :login
    get "/admin/login", to: "login#login"
    get "/admin/category", to: "admin#category_index"
    get "/admin/category/create", to: "admin#category_create", :as => :taodanhmuc
end