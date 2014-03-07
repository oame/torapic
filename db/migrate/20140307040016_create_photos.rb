class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.references :user
      t.datetime :expired_at

      t.datetime :deleted_at
      t.timestamps
    end
  end
end
