class LoginController < ApplicationController
    def login
        @admin = Admin.find_by(id: 1)
        # @admin = "Haha"
        if @admin != nil
            render "login/login"
        end
    end
end
