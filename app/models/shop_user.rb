class ShopUser < ActiveRecord::Base
# Scopes
  scope :activeonly, where(:is_active => true)
# Associations

  belongs_to :salutation

  has_many :user_customer_groups
  has_many :customer_groups, :through => :user_customer_groups


# Validations

  validates :first_name, :last_name, :email_address, :mobile_phone, :salutation_id, :presence => true
  validates :first_name, :last_name, :length => { :in => 2..25 }
  validates :email_address, :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i },   :length => { :maximum => 100 }, :uniqueness => true
  validates :mobile_phone, :numericality => true
  
  #11-17-2011
  #To be consisent with the database schema, the maximum number of characters allowed for password is changed to 20
  #validates :password, :length => { :in => 6..32 }
  
  validates :password, :length => { :in => 6..20 }

# Active Record Triggers
  before_save :set_version


  
  def before_validation
    attributes.each_key {|a| self[a].strip! if self[a].respond_to? :strip! }
  end

# Private Methods

  private

#  def before_validation
#  attributes.each_key {|a| self[a].strip! if self[a].respond_to? :strip! }
#  end

  def set_version
    self.version = self.version + 1
  end

  
  #11-10-2011
  #Method checks if a given email address exists in the database
  #Returns the password if email exists. otherwise, it returns nil
  
  def self.find_password_by_email(email)

    shop_user = self.activeonly.where("email_address = ?", email).first
    if shop_user      
      return shop_user.password
    else
    end
    
  end

  #11-10-2011
  #Added method as requested by Joey to authenticate shop users
  #input = email_address and password
  #output consists of status and message
  #status = 0 if email_address and password match
  #status = 1 if email_address does not exist
  #status = 2 if password is incorrect

  def self.authenticate_email(email,pword)

    response = Hash.new  
    password = self.find_password_by_email(email)
    
    if password 
    
      if password == pword      
      
        response["status"] = 0
        response["message"] = "Successful login"
   
      else
      
        response["status"] = 2
        response["message"] = "Incorrect password"
        
      end
      
    else
    
      response["status"] = 1
      response["message"] = "Email address not found"
      
    end 
       
    return response
  end

end
