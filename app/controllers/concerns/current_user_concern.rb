
module CurrentUserConcern
    extend ActiveSupport::Concern

    # override current_user from the devise gem so that it is available even when 
    # no user is logged in
    def current_user
        super || guest_user
    end

    def guest_user
        OpenStruct.new(name: "Guest User", 
                        first_name:"Guest", 
                        last_name: "User", 
                        email: "guest@example.com"
                        )
    end
   

end