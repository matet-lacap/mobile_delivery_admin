class DeliveryAddress < ActiveRecord::Base
# Scopes

# Associations

  belongs_to :state


# Validations

  validates :shop_user_id, :presence => true, :numericality => { :only_integer => true }
  validates :name, :city, :zip_code, :street_address01, :state_id, :presence => true
  
  #11-18-2011
  #Add validation on length of the name, zipcode, street_address01, street_address02 to catch error
  validates :name ,:zip_code, :street_address01,  :city, :length => { :in => 2..50 } 
  validates :street_address02, :contact_phone, :length => { :maximum => 50 }


# Active Record Triggers
  before_save :set_version
  before_validation :remove_whitespace_null

# Remove leading and trailing whitespace characters 
# Also checks if is_active is null, if yes, use default value
# 11-18-2011

  def remove_whitespace_null
        
    if self.is_invoice == nil
      self.is_invoice = true
    end
    
    self.name.to_s.strip!
    self.address_info.to_s.strip!
    self.city.to_s.strip!
    self.zip_code.to_s.strip!
    self.street_address01.to_s.strip!
    self.street_address02.to_s.strip!
    self.contact_phone.to_s.strip!
  end


# Private Methods

  private

  def set_version
    self.version = self.version + 1
  end


end
