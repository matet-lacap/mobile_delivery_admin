class OutputController < ApplicationController

  respond_to :html, :json, :xml

  def index

    @product = Product.get_product_all_info
    @vendor = Vendor.find(:all)
    @location = Location.get_info_with_state_name
  
    respond_with({
    :products => @product,
    :vendors => @vendor,
    :location => @location
    }
    )
    
  end

  def show

#    @product = Product.get_product_by_id_all_info(params[:id])
#    @vendor = Vendor.get_vendor_by_product_id(params[:id])
#    @location = Location.get_location_by_product_id(params[:id])


    @vendor = Vendor.get_vendor_by_id(params[:id])
    @product = Product.get_all_products_info_by_vendor_id(params[:id])
    @location = Location.get_location_by_vendor_id(params[:id])
  
    respond_with({
    :vendor => @vendor,
    :products => @product,
    :location => @location
    }
    )

  end

end
