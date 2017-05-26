module ApplicationHelper
  def avatar_url
    if current_user.photo.nil?
      current_user.facebook_picture_url || asset_path('mike_horn.png')
    else
      cl_image_path(current_user.photo.path, height: 100, width: 100, crop: :fill)
    end
  end
end
