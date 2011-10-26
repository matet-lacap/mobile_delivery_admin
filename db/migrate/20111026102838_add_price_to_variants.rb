class AddPriceToVariants < ActiveRecord::Migration
  def change

   change_table :variants do |t|
      t.decimal  "variant_price",                  :precision => 10, :scale => 2, :default => 0
    end
  
  end
end
