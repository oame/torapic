class CreateAuthentications < ActiveRecord::Migration
  def change
    create_table :authentications do |t|
      t.references :user, null: false, index: true
      t.string :uid, null: false
      t.string :provider, null: false
      t.string :token
      t.string :token_secret

      t.timestamps null: false
    end
  end
end
