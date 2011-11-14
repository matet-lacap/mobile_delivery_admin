class RegisterController < ApplicationController

  #Post method
  #Accepts salutation_id, first_name, last_name, mobile_phone, birth_date, email address and password as input (in JSON format)
  #Returns corresponding status and status/error message for debugging
  #Return shop user id if registration is successful

  def create
    
    @RegisterShopUser  = params[:register_user]

    begin

      if @RegisterShopUser
        
        if @RegisterShopUser["salutation_id"] and @RegisterShopUser["first_name"] and @RegisterShopUser["last_name"] and @RegisterShopUser["email_address"] and  @RegisterShopUser["mobile_phone"] and @RegisterShopUser["password"]

            
          if Salutation.find(@RegisterShopUser["salutation_id"])

            shop_user = ShopUser.new
            shop_user.update_attributes(@RegisterShopUser)
            shop_user.save!
            message = {"status" => 0, "message" => "Registration successful", "shop_user_id" => shop_user.id}          
              
          else
            
            message = {"status" => 2, "message" => "Salutation id does not exist"}
                  
          end
            
        else
          
          message = {"status" => 3, "message" => "Incomplete input parameters"}
          
        end
        
      else
      
        message = {"status" => 4, "message" => "No input parameter"}
        
      end
          
    rescue ActiveRecord::RecordInvalid => e
        
      message = {"status" => 1, "message" => "#{e}"}

    rescue ActiveRecord::RecordNotFound => e
        
      message = {"status" => 5, "message" => "#{e}"}

    rescue Exception => msg
          
      message = {"status" => 6, "message" => "Technical Error: #{msg}"}
                
    end

    
    render :json => message

  end

end
