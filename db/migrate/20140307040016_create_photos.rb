class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :image # Carrierwave
      t.string :salt # Carrierwave
      t.references :user, null: false
      t.datetime :expired_at
      t.integer :view_count, default: 0
      t.string :token # Tokenable
      
      t.timestamps null: false
    end
  end
end
