class Product < ActiveRecord::Base

# Scopes

  scope :activeonly, where(:is_active => true)
  scope :special_offer_only, where(:is_only_special_offer => true)


# Associations


  belongs_to :vat
  belongs_to :catalog
  belongs_to :vendor
  belongs_to :location

  #10/24
  #changed relationship of product-add-on to MANY-TO-MANY
  #has_many :add_ons
  has_and_belongs_to_many :add_ons
  
  has_many :variant


  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "150x150>", :small => "100x100>" }



  attr_accessor :delete_image
  before_save { self.image = nil if self.delete_image == '1' }

# Validations

  validates :vat_id, :name, :vendor_id, :catalog_id, :presence => true
  validates :name, :length => { :in => 3..50 }
  validates :description_short, :length => { :maximum => 200 }



# Active Record Triggers
  before_save :set_version


# Rails Admin


  rails_admin do

    list do
      field :image do
        column_width 100

        thumb_method :small
      end
      field :name do
        column_width 100
      end
      field :description_short do
        label "Short Description"
        column_width 100
      end
      field :is_only_special_offer do
        label "Special Offer Only"
        column_width 30
      end
      field :is_delivery do
        label "For Delivery"
        column_width 30
      end
      field :is_pickup do
        label "for Pickup"
        column_width 30
      end
      field :is_active do
        column_width 30
      end

    end

    edit do
      field :image do
        thumb_method :small
      end
      field :name
      field :description_short do
        label "Short Description"
      end
      field :description_long
      field :vat
      field :catalog
      field :vendor
      field :location
      field :is_only_special_offer do
        label "Special Offer Only"
      end
      field :is_delivery do
        label "For Delivery"
      end
      field :is_pickup do
        label "for Pickup"
      end
      field :is_active
      field :add_ons
      field :variant
    end

    show do
      field :image do
        thumb_method :small
      end
      field :name
      field :description_short do
        label "Short Description"
      end
      field :description_long
      field :vat
      field :catalog
      field :vendor
      field :is_only_special_offer do
        label "Special Offer Only"
      end
      field :is_delivery do
        label "For Delivery"
      end
      field :is_pickup do
        label "for Pickup"
      end
      field :is_active
      field :add_ons
      field :variant
    end

  end


# Model Methods

  def self.get_product_info(product_id, info)


    if !info.nil?

      case info

        when "variants"

          get_product_variants(product_id)

        when "addons"

          get_product_addons(product_id)


        else

          "No information available"

      end

    else

      get_product(product_id)

    end

  end



# Private Methods

  private

  def set_version
    self.version = self.version + 1
  end


  def self.get_product(product_id)

     if Product.activeonly.limit(1).exists?(product_id)

       Product.find(product_id)

     end

  end


  def self.get_product_variants(product_id)

    if Product.activeonly.exists?(product_id)

      Product.limit(1).find(product_id).variant

    end

  end


  def self.get_product_addons(product_id)

    if Product.activeonly.exists?(product_id)

      Product.limit(1).find(product_id).add_ons

    end

  end


  def self.get_all_products_info_by_vendor_id(id)
    products = Product.activeonly.where("vendor_id = ?", id)
    products_by_vendor_list = Array.new
    
    products.each do |product|
      products_by_vendor_list.push(Product.get_product_by_id_all_info(product.id))
    end
    
    return products_by_vendor_list
    
  end


  def self.get_location_by_product_id(id)
    loc_id =  Product.activeonly.find(id).location.object_id
    if loc_id == nil
      return 
    else
      return Location.find(loc_id)
    end
  end

  #10262011
  #Output = product info of a given product_id with addons and variants

  def self.get_product_by_id_all_info(product_id)

    product_add_ons_variants = Array.new
    catalog_add_ons_variants = Hash.new

      product = Product.activeonly.find(product_id)
      
      if product
        catalog_add_ons_variants["catalog_id"] = product.catalog_id
        catalog_add_ons_variants["description_long"] = product.description_long
        catalog_add_ons_variants["description_short"] = product.description_short
        catalog_add_ons_variants["id"] = product.id
        catalog_add_ons_variants["image_content_type"] = product.image_content_type
        catalog_add_ons_variants["image_url"] = product.image_url
        catalog_add_ons_variants["image_file_name"] = product.image_file_name
        catalog_add_ons_variants["image_file_size"] = product.image_file_size
        catalog_add_ons_variants["image_updated_at"] =  product.image_updated_at
        catalog_add_ons_variants["is_active"] = product.is_active
        catalog_add_ons_variants["is_delivery"] = product.is_delivery
        catalog_add_ons_variants["is_only_special_offer"] = product.is_only_special_offer
        catalog_add_ons_variants["is_pickup"] = product.is_pickup
        catalog_add_ons_variants["location_id"] = product.location.object_id
        catalog_add_ons_variants["name"] = product.name
        catalog_add_ons_variants["special_offer_price"] = product.special_offer_price
        catalog_add_ons_variants["vat_id"] = product.vat_id
        catalog_add_ons_variants["vendor_id"] = product.vendor_id
        catalog_add_ons_variants["version"] = product.version
        catalog_add_ons_variants["catalog_name"] = product.catalog.name
        catalog_add_ons_variants["add_ons"] = product.add_ons
        catalog_add_ons_variants["variant"] = product.variant
            
        return catalog_add_ons_variants
        
       else
       return
       end
  end
  

  #10252011
  #Output = all product info with addons and variants

  def self.get_product_all_info    
    product_add_ons_variants = Array.new
    
      Product.activeonly.each do |product| 
        catalog_add_ons_variants = Hash.new
        catalog_add_ons_variants["catalog_id"] = product.catalog_id
        catalog_add_ons_variants["description_long"] = product.description_long
        catalog_add_ons_variants["description_short"] = product.description_short
        catalog_add_ons_variants["id"] = product.id
        catalog_add_ons_variants["image_content_type"] = product.image_content_type
        catalog_add_ons_variants["image_url"] = product.image_url
        catalog_add_ons_variants["image_file_name"] = product.image_file_name
        catalog_add_ons_variants["image_file_size"] = product.image_file_size
        catalog_add_ons_variants["image_updated_at"] =  product.image_updated_at
        catalog_add_ons_variants["is_active"] = product.is_active
        catalog_add_ons_variants["is_delivery"] = product.is_delivery
        catalog_add_ons_variants["is_only_special_offer"] = product.is_only_special_offer
        catalog_add_ons_variants["is_pickup"] = product.is_pickup
        catalog_add_ons_variants["location_id"] = product.location_id
        catalog_add_ons_variants["name"] = product.name
        catalog_add_ons_variants["special_offer_price"] = product.special_offer_price
        catalog_add_ons_variants["vat_id"] = product.vat_id
        catalog_add_ons_variants["vendor_id"] = product.vendor_id
        catalog_add_ons_variants["version"] = product.version
        catalog_add_ons_variants["catalog_name"] = product.catalog.name
        catalog_add_ons_variants["add_ons"] = product.add_ons
        catalog_add_ons_variants["variant"] = product.variant
        
        product_add_ons_variants.push(catalog_add_ons_variants)
      end  

      return product_add_ons_variants

  end
  


end
