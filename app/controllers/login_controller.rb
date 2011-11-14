class LoginController < ApplicationController

  respond_to :html, :json, :xml

  #Post method
  #Accepts email address and password as input (in JSON format)
  #Authenticates if the email address and the password match
  #Returns corresponding status and status message for debugging
  
  def create

    @ShopUser  = params[:user]
    
    if @ShopUser
      email = @ShopUser["email_address"]
      pword = @ShopUser["password"]
    
      #check if input parameters are supplied
      if email and pword    
        message = ShopUser.authenticate_email(email,pword)
      else
        message = {"status" => 3, "message" => "Incomplete input parameters"}
      end
      
    else

      message = {"status" => 4, "message" => "No input parameters"}
        
    end
    
    render :json => message

  end
  
end



