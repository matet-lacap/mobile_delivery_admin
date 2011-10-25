class AddSpecialPriceToProducts < ActiveRecord::Migration
  def change
    change_table :products do |t|
      t.decimal  "special_offer_price",        :precision => 10, :scale => 2, :default => 0
    end
  end
end
