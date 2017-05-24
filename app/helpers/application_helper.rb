module ApplicationHelper
  def avatar_url
    if current_user.photo.nil?
      current_user.facebook_picture_url || "http://placehold.it/30x30"
    else
      cl_image_path(current_user.photo.path)
    end
  end
end
