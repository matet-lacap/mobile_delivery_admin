class AddVariantIdToProductPrices < ActiveRecord::Migration
  def change
    change_table :product_prices do |t|
      t.integer  "variant_id"
    end
  end
end
