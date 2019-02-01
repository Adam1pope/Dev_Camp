module CurrentUserConcern
  extend ActiveSupport::Concern

  def current_user
    super || guest_user
  end 

  # created guest user from GuestUser class which inherited from User class. 
  def guest_user
    guest = GuestUser.new
    guest.name = "Guest User"
    guest.first_name = "Guest"
    guest.last_name = "User"
    guest.email = "guest@example.com"
    guest 
  end 
end 

