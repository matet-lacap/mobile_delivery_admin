class Variant < ActiveRecord::Base
# Scopes

# Associations

  belongs_to :product
  belongs_to :catalog

  #has_many :order_lines
  has_many :product_prices


# Validations

  validates :sort_order, :presence => true, :numericality => { :only_int => true}
  validates :name, :presence => true, :length => { :in => 3..50 }

# Active Record Triggers
  before_save :set_version


# Rails Admin

  rails_admin do

    
    edit do
      field :catalog_id
      field :description
      field :is_active
      field :name
      field :product_id
      field :sort_order
      field :variant_price      
    end

    show do
      field :catalog_id
      field :description
      field :is_active
      field :name
      field :product_id
      field :sort_order
      field :variant_price
    end
  end




# Private Methods

  private




  def set_version
    self.version = self.version + 1
  end

end
