class OutputController < ApplicationController

  respond_to :html, :json, :xml

  def index

#  self.get_product_variants(product_id)
#  self.get_product_addons(product_id)

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

    @query = Product.get_product_by_id_all_info(params[:id])

    respond_to do |format|

      format.json { render :json => @query }
      format.xml { render :xml => @query }

    end

  end

end
