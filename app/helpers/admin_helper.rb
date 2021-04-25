module AdminHelper
    def ActionMsg(status)
        if status
            flash[:status] = 1
            flash[:msg] = "Thao tác thành công!"
        else
            flash[:status] = 0
            flash[:msg] = "Thao tác thất bại!"
        end
    end
end
