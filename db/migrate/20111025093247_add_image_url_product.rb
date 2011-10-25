class AddImageUrlProduct < ActiveRecord::Migration
  def up
    change_table :products do |t|
      t.string  "image_url",               :limit => 150
    end
  end

  def down
  end
end
