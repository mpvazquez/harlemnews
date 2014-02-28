class AddStoryAttrs < ActiveRecord::Migration
  def change
    change_table :stories do |t|
      t.references :user
      t.text :url
    end
  end
end
