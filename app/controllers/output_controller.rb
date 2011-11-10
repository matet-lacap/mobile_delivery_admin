class OutputController < ApplicationController

  respond_to :html, :json, :xml

  #11-09-2011
  #added news model in the main json as requested by Joey        
  @@news = News.activeonly
  
  #11-10-2011
  #Added salutation and state models in the main json as requested by Joey
  @@salutation = Salutation.activeonly
  @@state = State.activeonly

  def index

    @product = Product.get_product_all_info
    @vendor = Vendor.activeonly
    @location = Location.get_info_with_state_name
    

    
    respond_with({
    :products => @product,
    :vendors => @vendor,
    :location => @location,
    :news => @@news,
    :salutations => @@salutation,
    :state => @@state
    }
    )
    
  end

  def show

    @vendor = Vendor.get_vendor_by_id(params[:id])
    @product = Product.get_all_products_info_by_vendor_id(params[:id])
    @location = Location.get_location_by_vendor_id(params[:id])

    #11-10-2011
    #Added salutation and state models in the main json as requested by Joey  
    respond_with({
    :vendor => @vendor,
    :products => @product,
    :location => @location,
    :news => @@news,
    :salutations => @@salutation,
    :state => @@state
    }
    )

  end

end
