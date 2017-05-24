module UsersHelper
  def set_user_image(user)
    user.photo.nil? ? asset_path('jungle.png') : cl_image_path(user.photo.path)
  end

  def set_username(user)
    user.username.nil? ? "Mike" : user.username
  end
end
