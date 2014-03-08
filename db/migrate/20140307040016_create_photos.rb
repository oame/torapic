class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :image # Carrierwave
      t.references :user
      t.datetime :expired_at

      t.datetime :deleted_at # Paranoia
      t.timestamps
    end
  end
end
