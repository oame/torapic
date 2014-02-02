class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :user

      t.timestamps

      # Paranoia
      t.datetime :deleted_at
    end
  end
end
