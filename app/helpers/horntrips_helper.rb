module HorntripsHelper
  def set_horntrip_image(horntrip)
    horntrip.photo.nil? ? asset_path('jungle.png') : cl_image_path(horntrip.photo.path)
  end
end
