class LoginController < ApplicationController

  respond_to :html, :json, :xml

  #Post method
  #Accepts email address and password as input (in JSON format)
  #Authenticates if the email address and the password match
  #Returns corresponding status and status message for debugging
  
  def create

    @ShopUser  = params[:user]
    email = @ShopUser["email_address"]
    pword = @ShopUser["password"]
    message = ShopUser.authenticate_email(email,pword)
    
    render :json => message

    
  end
  
end



