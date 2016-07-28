object @photo

attributes :id, :user_id, :created_at, :expired_at, :view_count, :image_background_color, :image_text_color, :image_link_color, :image_shadow_color

node :urls do |photo|
  {
    origin: photo.image.url,
    thumb: photo.image.url(:thumb),
    medium: photo.image.url(:medium)
  }
end
