module UsersHelper
  def set_user_image(user)
    user.photo.nil? ? asset_path('mike_horn.png') : cl_image_path(user.photo.path)
  end

  def set_username(user)
    user.username.nil? ? "Mike" : user.username
  end

  def set_level(user)
    if user.bookings.size == 0
      "Rookie"
    elsif user.bookings.size <= 2
      "Survivor"
    else
      "Expert"
    end
  end
end
