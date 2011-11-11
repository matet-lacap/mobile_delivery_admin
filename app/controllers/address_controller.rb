class AddressController < ApplicationController

  #Post method for adding delivery address for shop users
  #Accepts JSON as input
  #Returns corresponding status and status/error message for debugging (also in JSON)

  def create
    
    @DeliveryAddress  = params[:delivery_address]

    begin

    if @DeliveryAddress

      if @DeliveryAddress["shop_user_id"] and @DeliveryAddress["name"] and @DeliveryAddress["city"] and @DeliveryAddress["zip_code"] and  @DeliveryAddress["street_address01"] and @DeliveryAddress["state_id"]

        
        if ShopUser.find(@DeliveryAddress["shop_user_id"]) and State.find(@DeliveryAddress["state_id"])

          delivery_address = DeliveryAddress.new
          delivery_address.update_attributes(@DeliveryAddress)
          delivery_address.save!
          message = {"status" => 0, "message" => "Delivery address added successfully"}
                        
        end
        
      else
      
        message = {"status" => 2, "message" => "Incomplete input parameters"}
      
      end
      
    else

      message = {"status" => 3, "message" => "No input parameter"}

    end
      
    rescue ActiveRecord::RecordInvalid => e
    
      message = {"status" => 1, "message" => "#{e}"}

    rescue ActiveRecord::RecordNotFound => e
    
      message = {"status" => 4, "message" => "#{e}"}

    rescue Exception => msg
      
      message = {"status" => 5, "message" => "Technical Error: #{msg}"}
            
    end
    
    render :json => message

  end

end
