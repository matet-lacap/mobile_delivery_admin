class AddLogoUrlToVendor < ActiveRecord::Migration
  def change
    change_table :vendors do |t|
      t.string  "logo_url",               :limit => 150
    end
    
  end
end
