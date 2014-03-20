class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :image # Carrierwave
      t.references :user
      t.datetime :expired_at
      t.integer :view_count, default: 0
      t.string :image_background_color
      t.string :image_text_color
      t.string :image_link_color
      t.string :image_shadow_color

      t.datetime :deleted_at # Paranoia
      t.timestamps
    end
  end
end
