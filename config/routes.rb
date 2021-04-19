Rails.application.routes.draw do
    resource :login
    get "/admin/login", to: "login#login"
    get "/admin", to: "admin#index"
end