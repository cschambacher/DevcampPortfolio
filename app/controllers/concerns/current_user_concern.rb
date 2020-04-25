
module CurrentUserConcern
    extend ActiveSupport::Concern

    # override current_user from the devise gem so that it is available even when 
    # no user is logged in
    def current_user
        super || guest_user
    end

    def guest_user
        guest = GuestUser.new
        guest.name = "Guest User"
        guest.first_name = "Guest" 
        guest.last_name = "User" 
        guest.email = "guest@example.com"
        guest
        # openstruct doesn't work with petergate so we created a guest user model to inherit from user model
        # OpenStruct.new(name: "Guest User", 
        #                 first_name:"Guest", 
        #                 last_name: "User", 
        #                 email: "guest@example.com"
        #                 )
    end
   

end