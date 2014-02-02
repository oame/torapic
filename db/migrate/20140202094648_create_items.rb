class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.user :references

      t.timestamps
    end
  end
end
