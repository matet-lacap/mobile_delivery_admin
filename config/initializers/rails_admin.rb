#         ooooooooo.              o8o  oooo                 .o.             .o8                     o8o
#         `888   `Y88.            `"'  `888                .888.           "888                     `"'
#          888   .d88'  .oooo.   oooo   888   .oooo.o     .8"888.      .oooo888  ooo. .oo.  .oo.   oooo  ooo. .oo.
#          888ooo88P'  `P  )88b  `888   888  d88(  "8    .8' `888.    d88' `888  `888P"Y88bP"Y88b  `888  `888P"Y88b
#          888`88b.     .oP"888   888   888  `"Y88b.    .88ooo8888.   888   888   888   888   888   888   888   888
#          888  `88b.  d8(  888   888   888  o.  )88b  .8'     `888.  888   888   888   888   888   888   888   888
#         o888o  o888o `Y888""8o o888o o888o 8""888P' o88o     o8888o `Y8bod88P" o888o o888o o888o o888o o888o o888o

# RailsAdmin config file. Generated on October 25, 2011 11:15
# See github.com/sferik/rails_admin for more informations

RailsAdmin.config do |config|

  config.current_user_method { current_user } # auto-generated
  
  # Set the admin name here (optional second array element will appear in a beautiful RailsAdmin red ©)
  config.main_app_name = ['Mobile Delivery', 'Admin']
  # or for a dynamic name:
  # config.main_app_name = Proc.new { |controller| [Rails.application.engine_name.titleize, controller.params['action'].titleize] }



#  config.model AddOn do

#    exclude_fields :id, :version

#    parent Product

#    edit do

#      fields :order_lines do

#        hide

#      end

#      fields :name, :description do
#        column_width 400
#      end

#      fields :catalog, :product do
#        column_width 300
#      end

#    end

#  end

#  config.model AdminRole do

#    exclude_fields :id, :version

#    parent User


#    list do
#      field :name do
#        label 'Title'
#         column_width 250
#      end

#      fields :has_mobile_access, :has_pc_access, :is_active do
#        column_width  50
#      end

#      field :vendor do
#        column_width 150
#      end
#    end

#    edit do

#      fields :name do
#        column_width 400
#      end

#      fields :vendor do
#        column_width 300
#      end

#    end

#  end

#  config.model Catalog do

#    exclude_fields :id, :version

#    parent Vendor

#    list do
#      field :image do
#         thumb_method :thumb
#      end
#    end


#    edit do

#      fields :sort_order do
#        column_width 50

#      end

#      fields :name do
#        column_width 400
#      end

#      fields :vendor do
#        column_width 300
#      end

#      field :image do

#        thumb_method :thumb
#        delete_method :delete_image

#      end

#    end

#    show do
#      field :image do
#         thumb_method :thumb
#      end
#    end
#  end

#  config.model CustomerGroup do

#    exclude_fields :id, :version

#    parent User

#    field :name do
#      label "Title"
#    end

#    list do
#      field :name do
#        label 'Title'
#      end
#    end

#    edit do

#      fields :delivery_costs, :product_prices, :user_customer_groups do
#        hide
#      end

#      fields :name, :description do
#        column_width 400
#      end

#      fields :vendor do
#        column_width 300
#      end

#    end

#  end

#  config.model DeliveryAddress do

#    exclude_fields :id, :version

#    navigation_label 'Delivery Management'

#    weight 2

#    list do
#      field :shop_user_id do
#        label "Shop User Id"
#      end
#    end

#    edit do

#      fields :name, :address_info, :city, :zip_code, :street_address01, :street_address02, :contact_phone do
#        column_width 400
#      end

#      fields :state do
#        column_width 300
#      end

#    end



#  end

#  config.model DeliveryCost do

#    exclude_fields :id

#    parent DeliveryAddress

#    edit do

#      fields :price do
#        column_width 150
#      end

#      fields :vendor, :order_type, :customer_group, :service_region do
#        column_width  300
#      end
#    end

#  end

#  config.model DeliveryLeadTime do

#    exclude_fields :id, :version

#    parent DeliveryAddress


#    edit do
#      fields :vendor, :location do
#        column_width 300
#      end
#    end

#  end

#  config.model Location do

#    exclude_fields :id, :version

#    parent Vendor

#    field :name_01 do
#      label "Name 1"
#    end

#    field :street_address01 do
#      label "Street Address 1"
#    end

#    field :street_address02 do
#      label "Street Address 2"
#    end



#    list do

#    end

#    edit do

#      fields :delivery_lead_times, :order_headers, :products, :product_prices do

#        hide

#      end

#      fields :name, :name_01, :street_address01, :street_address02, :email_address do

#        column_width 400

#      end


#      fields :phone, :fax, :api_code, :state, :vendor do
#        column_width 300
#      end

#      fields :zip_code do
#        column_width 100
#      end

#    end

#  end

#  config.model Navigation do

#    exclude_fields :id, :version

#    parent User

#    edit do

#      fields :role_navigations do
#        hide
#      end

#      fields :name_menu, :name_header, :name_control  do
#        column_width 400
#      end

#      fields :navigation do
#        column_width 300
#        label 'Parent'
#      end
#    end

#  end

#  config.model News do

#    exclude_fields :id, :version

#    parent Vendor

#    edit do

#      fields :headline, :newstext do
#        column_width 400
#      end

#      fields :vendor, :customer_group do
#        column_width 300
#      end

#    end

#  end

#  config.model OpeningHour do

#    exclude_fields :id, :version

#    parent Vendor

#    edit do
#      fields :opening_time do
#        column_width 400
#      end

#      fields :location, :vendor do
#        column_width 300
#      end
#    end

#  end

#  config.model OrderHeader do

#    exclude_fields :id, :version

#    navigation_label 'Orders Management'

#    weight 1

#    list do
#      field :shop_user_id do
#        label "Shop User Id"
#      end
#    end


#    edit do
#      fields :vendor, :location, :order_type, :order_state do
#        column_width 300
#      end
#    end

#  end

#  config.model OrderLine do

#    exclude_fields :id, :version

#    parent OrderHeader

#    edit do
#      fields :add_on, :order_header do
#        column_width 300
#      end
#    end

#  end

#  config.model OrderState do

#    exclude_fields :id, :version

#    parent OrderHeader

#    edit do
#      fields :name do
#        column_width 400
#      end

#      fields :vendor do
#        column_width 300
#      end

#      fields :sequence do

#        column_width 50
#      end
#    end

#  end

#  config.model OrderType do

#    exclude_fields :id, :version

#    parent OrderHeader


#    edit do
#      fields :name do
#        column_width 400
#      end

#      fields :vendor do
#        column_width 300
#      end
#    end


#  end

#  config.model Product do

#    exclude_fields :id, :version

#    navigation_label 'Product Management'

#    weight 3


#    edit do

#      fields :name, :catalog, :location, :vendor do
#         column_width 400
#      end

#      fields :description_short, :description_long do
#        column_width 400
#      end

#      field :image do
#        thumb_method :thumb
#        delete_method :delete_image
#      end

#    end

#    show do
#      field :image do
#         thumb_method :thumb
#      end

#    end

#  end

#  config.model ProductPrice do

#    exclude_fields :id

#    parent Product


#    edit do
#      fields :special_offer_type, :location, :customer_group, :variant do
#        column_width 300
#      end
#    end

#  end

#  config.model Role do

#    exclude_fields :id, :version

#    parent User

#    field :name do
#      label "Title"
#    end

#    list do
#      field :name do
#      end
#    end

#    edit do
#      field :name do
#        column_width 400
#      end
#    end

#    show do
#    end

#  end

#  config.model RoleNavigation do

#    visible false

#    exclude_fields :id, :version

#    parent User

#    edit do
#      fields :navigation, :role do
#        column_width 300
#      end
#    end

#  end

#  config.model Salutation do

#    exclude_fields :id, :version

#    parent User

#    field :name do
#      label "Title"
#    end

#    edit do
#      fields :name do
#        column_width 400
#      end
#    end

#  end

#  config.model ServiceRegion do

#    visible false

#    exclude_fields :id, :version

#    parent Vendor

#    edit do
#      fields :location, :vendor do
#        column_width 300
#      end
#    end

#  end

#  config.model ShopUser do

#    exclude_fields :id, :version

#    parent OrderHeader


#    edit do

#      fields :user_customer_groups do
#        hide
#      end

#      fields :first_name, :last_name, :mobile_phone, :password do
#        column_width 300
#      end

#      fields :email_address do
#        column_width 400

#      end

#      fields :salutation do
#        column_width 300
#      end

#    end

#  end

#  config.model SpecialOfferType do

#    exclude_fields :id, :version

#    parent Product

#    edit do
#      fields :name do
#        column_width 400
#      end

#      fields :description do
#        column_width 500
#      end

#      fields :vendor do
#        column_width 300
#      end

#    end

#  end

#  config.model State do

#    exclude_fields :id, :version

#    parent User

#    edit do
#      field :name do
#        column_width 400
#      end
#    end

#    list do
#      field :name do
#        column_width 200
#      end

#      field :is_active do
#        column_width 100
#      end

#    end

#  end

#  config.model Translation do

#    exclude_fields :id, :version

#    parent User

#    list do
#      field :shortcut do
#        column_width 150
#      end

#      field :language_code do
#        column_width 50
#      end

#      field :translation do
#        column_width 350
#      end
#    end

#    edit do
#      fields :shortcut, :translation do
#        column_width 400
#      end

#      fields :language_code do
#        column_width 50
#      end
#    end

#  end

#  config.model User do

#    navigation_label 'Administration'

#    weight 5

#  end

#  config.model UserCustomerGroup do

#      visible false

#  end

#  config.model Variant do

#    exclude_fields :id, :version

#    parent Product

#    edit do

#      fields :sort_order do
#        column_width 50
#      end

#      fields :name do
#        column_width 400
#      end

#      fields :description do
#        column_width 500
#      end

#      fields :product, :catalog do
#        column_width 300
#      end

#    end

#  end

#  config.model Vat do

#    exclude_fields :id, :version

#    parent Product

#    edit do

#      fields :delivery_costs do
#        hide
#      end

#      fields :name do
#        column_width 400
#      end

#      fields :order_type, :vendor do
#        column_width 300
#      end


#    end

#  end

#  config.model Vendor do

#    exclude_fields :id, :version

#    navigation_label 'Vendor Management'

#    weight 4

#    field :street_address01 do
#      label "Street Address 1"
#    end

#    field :street_address02 do
#      label "Street Address 2"
#    end


#    edit do


#      fields :customer_groups, :delivery_costs, :delivery_lead_times, :news, :opening_hours, :order_headers, :order_states, :products, :service_regions, :special_offer_types, :vats do
#         hide
#      end

#      fields :name, :name_1, :name_2, :street_address01, :street_address02, :city, :email_address, :website do
#        column_width 400
#      end

#      fields :phone, :fax do
#        column_width 200
#      end

#      fields :zip_code do
#        column_width 100
#      end


#    end

#    show do

#      group :admin do
#        label "Administrator Roles"

#        field :admin_roles do

#          formatted_value do

#            bindings[:view].render :partial => "show_admin_roles", :locals => {:field => bindings[:object].admin_roles}

#          end
#        end
#      end

#    end



#  end



  #  ==> Authentication (before_filter)
  # This is run inside the controller instance so you can setup any authentication you need to.
  # By default, the authentication will run via warden if available.
  # and will run on the default user scope.
  # If you use devise, this will authenticate the same as authenticate_user!
  # Example Devise admin
  # RailsAdmin.config do |config|
  #   config.authenticate_with do
  #     authenticate_admin!
  #   end
  # end
  # Example Custom Warden
  # RailsAdmin.config do |config|
  #   config.authenticate_with do
  #     warden.authenticate! :scope => :paranoid
  #   end
  # end

  #  ==> Authorization
  # Use cancan https://github.com/ryanb/cancan for authorization:
  # config.authorize_with :cancan

  # Or use simple custom authorization rule:
  # config.authorize_with do
  #   redirect_to root_path unless warden.user.is_admin?
  # end

  # Use a specific role for ActiveModel's :attr_acessible :attr_protected
  # Default is :default
  # current_user is accessible in the block if you want to make it user specific.
  # config.attr_accessible_role { :default }

  #  ==> Global show view settings
  # Display empty fields in show views
  # config.compact_show_view = false

  #  ==> Global list view settings
  # Number of default rows per-page:
  # config.default_items_per_page = 50

  #  ==> Included models
  # Add all excluded models here:
  # config.excluded_models << [AddOn, AdminRole, Catalog, CustomerGroup, DeliveryAddress, DeliveryCost, DeliveryLeadTime, Location, Navigation, News, OpeningHour, OrderHeader, OrderLine, OrderState, OrderType, Product, ProductPrice, Role, RoleNavigation, Salutation, ServiceRegion, ShopUser, SpecialOfferType, State, Translation, User, UserCustomerGroup, Variant, Vat, Vendor]

  # Add models here if you want to go 'whitelist mode':
  # config.included_models << [AddOn, AdminRole, Catalog, CustomerGroup, DeliveryAddress, DeliveryCost, DeliveryLeadTime, Location, Navigation, News, OpeningHour, OrderHeader, OrderLine, OrderState, OrderType, Product, ProductPrice, Role, RoleNavigation, Salutation, ServiceRegion, ShopUser, SpecialOfferType, State, Translation, User, UserCustomerGroup, Variant, Vat, Vendor]

  # Application wide tried label methods for models' instances
  # config.label_methods << [:description] # Default is [:name, :title]

  #  ==> Global models configuration
  # config.models do
  #   # Configuration here will affect all included models in all scopes, handle with care!
  #
  #   list do
  #     # Configuration here will affect all included models in list sections (same for show, export, edit, update, create)
  #
  #     fields :name, :other_name do
  #       # Configuration here will affect all fields named [:name, :other_name], in the list section, for all included models
  #     end
  #
  #     fields_of_type :date do
  #       # Configuration here will affect all date fields, in the list section, for all included models. See README for a comprehensive type list.
  #     end
  #   end
  # end
  #
  #  ==> Model specific configuration
  # Keep in mind that *all* configuration blocks are optional.
  # RailsAdmin will try his best to provide the best defaults for each section, for each field!
  # Try to override as few things as possible, in the most generic way. Try to avoid setting labels for models and attributes, use ActiveRecord I18n API instead.
  # Less code is better code!
  # config.model MyModel do
  #   # Here goes your cross-section field configuration for ModelName.
  #   object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #   label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #   label_plural 'My models'      # Same, plural
  #   weight -1                     # Navigation priority. Bigger is higher.
  #   parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #   navigation_label              # Sets dropdown entry's name in navigation. Only for parents!
  #   # Section specific configuration:
  #   list do
  #     filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #     items_per_page 100    # Override default_items_per_page
  #     sort_by :id           # Sort column (default is primary key)
  #     sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     # Here goes the fields configuration for the list view
  #   end
  #   show do
  #     # Here goes the fields configuration for the show view
  #   end
  #   export do
  #     # Here goes the fields configuration for the export view (CSV, yaml, XML)
  #   end
  #   edit do
  #     # Here goes the fields configuration for the edit view (for create and update view)
  #   end
  #   create do
  #     # Here goes the fields configuration for the create view, overriding edit section settings
  #   end
  #   update do
  #     # Here goes the fields configuration for the update view, overriding edit section settings
  #   end
  # end

# fields configuration is described in the Readme, if you have other question, ask us on the mailing-list!

#  ==> Your models configuration, to help you get started!

# All fields marked as 'hidden' won't be shown anywhere in the rails_admin unless you mark them as visible.
# There can be different reasons for that:
#  - belongs_to _id and _type (polymorphic) columns are hidden in favor of their associations
#  - associations are hidden if they have no matchable model found (model not included or non-existant)
#  - they are part of a bigger plan in a plugin (Devise/Paperclip) and hidden by contract
# Some fields may be hidden depending on the section, if they aren't deemed suitable for display or edition on that section
#  - non-editable columns (:id, :created_at, ..) in edit sections
#  - has_many/has_one associations in list section (hidden by default for performance reasons)
# Fields may also be marked as read_only (and thus not editable) if they are not mass-assignable by current_user

  # config.model AddOn do
  #   # Found associations:
  #   field :catalog, :belongs_to_association
  #   field :product, :has_and_belongs_to_many_association
  #   field :order_lines, :has_many_association
  #   # Found columns:
  #   field :id, :integer
  #   field :catalog_id, :integer        # Hidden
  #   field :product_id, :integer
  #   field :sort_order, :integer
  #   field :name, :string
  #   field :description, :text
  #   field :is_active, :boolean
  #   field :version, :integer
  #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  #  end

# All fields marked as 'hidden' won't be shown anywhere in the rails_admin unless you mark them as visible.
# There can be different reasons for that:
#  - belongs_to _id and _type (polymorphic) columns are hidden in favor of their associations
#  - associations are hidden if they have no matchable model found (model not included or non-existant)
#  - they are part of a bigger plan in a plugin (Devise/Paperclip) and hidden by contract
# Some fields may be hidden depending on the section, if they aren't deemed suitable for display or edition on that section
#  - non-editable columns (:id, :created_at, ..) in edit sections
#  - has_many/has_one associations in list section (hidden by default for performance reasons)
# Fields may also be marked as read_only (and thus not editable) if they are not mass-assignable by current_user

  # config.model AdminRole do
  #   # Found associations:
  #   field :vendor, :belongs_to_association
  #   # Found columns:
  #   field :id, :integer
  #   field :vendor_id, :integer        # Hidden
  #   field :name, :string
  #   field :has_mobile_access, :boolean
  #   field :has_pc_access, :boolean
  #   field :is_active, :boolean
  #   field :version, :integer
  #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  #  end

# All fields marked as 'hidden' won't be shown anywhere in the rails_admin unless you mark them as visible.
# There can be different reasons for that:
#  - belongs_to _id and _type (polymorphic) columns are hidden in favor of their associations
#  - associations are hidden if they have no matchable model found (model not included or non-existant)
#  - they are part of a bigger plan in a plugin (Devise/Paperclip) and hidden by contract
# Some fields may be hidden depending on the section, if they aren't deemed suitable for display or edition on that section
#  - non-editable columns (:id, :created_at, ..) in edit sections
#  - has_many/has_one associations in list section (hidden by default for performance reasons)
# Fields may also be marked as read_only (and thus not editable) if they are not mass-assignable by current_user

  # config.model Catalog do
  #   # Found associations:
  #   field :vendor, :belongs_to_association
  #   field :add_ons, :has_many_association
  #   field :products, :has_many_association
  #   field :variants, :has_many_association
  #   # Found columns:
  #   field :id, :integer
  #   field :vendor_id, :integer        # Hidden
  #   field :sort_order, :integer
  #   field :name, :string
  #   field :is_active, :boolean
  #   field :version, :integer
  #   field :image_file_name, :string        # Hidden
  #   field :image_content_type, :string        # Hidden
  #   field :image_file_size, :integer        # Hidden
  #   field :image_updated_at, :datetime        # Hidden
  #   field :image, :paperclip_file
  #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  #  end

# All fields marked as 'hidden' won't be shown anywhere in the rails_admin unless you mark them as visible.
# There can be different reasons for that:
#  - belongs_to _id and _type (polymorphic) columns are hidden in favor of their associations
#  - associations are hidden if they have no matchable model found (model not included or non-existant)
#  - they are part of a bigger plan in a plugin (Devise/Paperclip) and hidden by contract
# Some fields may be hidden depending on the section, if they aren't deemed suitable for display or edition on that section
#  - non-editable columns (:id, :created_at, ..) in edit sections
#  - has_many/has_one associations in list section (hidden by default for performance reasons)
# Fields may also be marked as read_only (and thus not editable) if they are not mass-assignable by current_user

  # config.model CustomerGroup do
  #   # Found associations:
  #   field :vendor, :belongs_to_association
  #   field :delivery_costs, :has_many_association
  #   field :product_prices, :has_many_association
  #   field :user_customer_groups, :has_many_association
  #   field :shop_users, :has_many_association
  #   # Found columns:
  #   field :id, :integer
  #   field :vendor_id, :integer        # Hidden
  #   field :name, :string
  #   field :description, :text
  #   field :is_active, :boolean
  #   field :version, :integer
  #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  #  end

# All fields marked as 'hidden' won't be shown anywhere in the rails_admin unless you mark them as visible.
# There can be different reasons for that:
#  - belongs_to _id and _type (polymorphic) columns are hidden in favor of their associations
#  - associations are hidden if they have no matchable model found (model not included or non-existant)
#  - they are part of a bigger plan in a plugin (Devise/Paperclip) and hidden by contract
# Some fields may be hidden depending on the section, if they aren't deemed suitable for display or edition on that section
#  - non-editable columns (:id, :created_at, ..) in edit sections
#  - has_many/has_one associations in list section (hidden by default for performance reasons)
# Fields may also be marked as read_only (and thus not editable) if they are not mass-assignable by current_user

  # config.model DeliveryAddress do
  #   # Found associations:
  #   field :state, :belongs_to_association
  #   # Found columns:
  #   field :id, :integer
  #   field :shop_user_id, :integer
  #   field :is_invoice, :boolean
  #   field :name, :string
  #   field :address_info, :text
  #   field :state_id, :integer        # Hidden
  #   field :city, :string
  #   field :zip_code, :string
  #   field :street_address01, :string
  #   field :street_address02, :string
  #   field :contact_phone, :string
  #   field :version, :integer
  #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  #  end

# All fields marked as 'hidden' won't be shown anywhere in the rails_admin unless you mark them as visible.
# There can be different reasons for that:
#  - belongs_to _id and _type (polymorphic) columns are hidden in favor of their associations
#  - associations are hidden if they have no matchable model found (model not included or non-existant)
#  - they are part of a bigger plan in a plugin (Devise/Paperclip) and hidden by contract
# Some fields may be hidden depending on the section, if they aren't deemed suitable for display or edition on that section
#  - non-editable columns (:id, :created_at, ..) in edit sections
#  - has_many/has_one associations in list section (hidden by default for performance reasons)
# Fields may also be marked as read_only (and thus not editable) if they are not mass-assignable by current_user

  # config.model DeliveryCost do
  #   # Found associations:
  #   field :vat, :belongs_to_association
  #   field :vendor, :belongs_to_association
  #   field :order_type, :belongs_to_association
  #   field :customer_group, :belongs_to_association
  #   field :service_region, :belongs_to_association
  #   # Found columns:
  #   field :id, :integer
  #   field :vendor_id, :integer        # Hidden
  #   field :order_type_id, :integer        # Hidden
  #   field :customer_group_id, :integer        # Hidden
  #   field :service_region_id, :integer        # Hidden
  #   field :price, :integer
  #   field :vat_id, :integer        # Hidden
  #   field :is_active, :boolean
  #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  #  end

# All fields marked as 'hidden' won't be shown anywhere in the rails_admin unless you mark them as visible.
# There can be different reasons for that:
#  - belongs_to _id and _type (polymorphic) columns are hidden in favor of their associations
#  - associations are hidden if they have no matchable model found (model not included or non-existant)
#  - they are part of a bigger plan in a plugin (Devise/Paperclip) and hidden by contract
# Some fields may be hidden depending on the section, if they aren't deemed suitable for display or edition on that section
#  - non-editable columns (:id, :created_at, ..) in edit sections
#  - has_many/has_one associations in list section (hidden by default for performance reasons)
# Fields may also be marked as read_only (and thus not editable) if they are not mass-assignable by current_user

  # config.model DeliveryLeadTime do
  #   # Found associations:
  #   field :vendor, :belongs_to_association
  #   field :location, :belongs_to_association
  #   # Found columns:
  #   field :id, :integer
  #   field :vendor_id, :integer        # Hidden
  #   field :location_id, :integer        # Hidden
  #   field :weekday, :integer
  #   field :time_from, :time
  #   field :time_until, :time
  #   field :lead_minutes, :integer
  #   field :version, :integer
  #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  #  end

# All fields marked as 'hidden' won't be shown anywhere in the rails_admin unless you mark them as visible.
# There can be different reasons for that:
#  - belongs_to _id and _type (polymorphic) columns are hidden in favor of their associations
#  - associations are hidden if they have no matchable model found (model not included or non-existant)
#  - they are part of a bigger plan in a plugin (Devise/Paperclip) and hidden by contract
# Some fields may be hidden depending on the section, if they aren't deemed suitable for display or edition on that section
#  - non-editable columns (:id, :created_at, ..) in edit sections
#  - has_many/has_one associations in list section (hidden by default for performance reasons)
# Fields may also be marked as read_only (and thus not editable) if they are not mass-assignable by current_user

  # config.model Location do
  #   # Found associations:
  #   field :state, :belongs_to_association
  #   field :vendor, :belongs_to_association
  #   field :delivery_lead_times, :has_many_association
  #   field :opening_hours, :has_many_association
  #   field :order_headers, :has_many_association
  #   field :product_prices, :has_many_association
  #   field :products, :has_many_association
  #   field :service_regions, :has_many_association
  #   # Found columns:
  #   field :id, :integer
  #   field :vendor_id, :integer        # Hidden
  #   field :name, :string
  #   field :name_01, :string
  #   field :state_id, :integer        # Hidden
  #   field :zip_code, :string
  #   field :street_address01, :string
  #   field :street_address02, :string
  #   field :phone, :string
  #   field :fax, :string
  #   field :email_address, :string
  #   field :api_code, :string
  #   field :is_active, :boolean
  #   field :version, :integer
  #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  #  end

# All fields marked as 'hidden' won't be shown anywhere in the rails_admin unless you mark them as visible.
# There can be different reasons for that:
#  - belongs_to _id and _type (polymorphic) columns are hidden in favor of their associations
#  - associations are hidden if they have no matchable model found (model not included or non-existant)
#  - they are part of a bigger plan in a plugin (Devise/Paperclip) and hidden by contract
# Some fields may be hidden depending on the section, if they aren't deemed suitable for display or edition on that section
#  - non-editable columns (:id, :created_at, ..) in edit sections
#  - has_many/has_one associations in list section (hidden by default for performance reasons)
# Fields may also be marked as read_only (and thus not editable) if they are not mass-assignable by current_user

  # config.model Navigation do
  #   # Found associations:
  #   field :navigations, :has_many_association
  #   field :role_navigations, :has_many_association
  #   field :navigation, :belongs_to_association
  #   # Found columns:
  #   field :id, :integer
  #   field :parent_id, :integer        # Hidden
  #   field :is_pane, :boolean
  #   field :pane_id, :integer
  #   field :width, :integer
  #   field :height, :integer
  #   field :pos_x, :integer
  #   field :pos_y, :integer
  #   field :is_multi, :boolean
  #   field :name_menu, :string
  #   field :name_header, :string
  #   field :name_control, :string
  #   field :is_active, :boolean
  #   field :version, :integer
  #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  #  end

# All fields marked as 'hidden' won't be shown anywhere in the rails_admin unless you mark them as visible.
# There can be different reasons for that:
#  - belongs_to _id and _type (polymorphic) columns are hidden in favor of their associations
#  - associations are hidden if they have no matchable model found (model not included or non-existant)
#  - they are part of a bigger plan in a plugin (Devise/Paperclip) and hidden by contract
# Some fields may be hidden depending on the section, if they aren't deemed suitable for display or edition on that section
#  - non-editable columns (:id, :created_at, ..) in edit sections
#  - has_many/has_one associations in list section (hidden by default for performance reasons)
# Fields may also be marked as read_only (and thus not editable) if they are not mass-assignable by current_user

  # config.model News do
  #   # Found associations:
  #   field :vendor, :belongs_to_association
  #   field :customer_group, :belongs_to_association
  #   # Found columns:
  #   field :id, :integer
  #   field :vendor_id, :integer        # Hidden
  #   field :customer_group_id, :integer        # Hidden
  #   field :headline, :string
  #   field :newstext, :text
  #   field :date_from, :date
  #   field :date_until, :date
  #   field :is_active, :boolean
  #   field :version, :integer
  #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  #  end

# All fields marked as 'hidden' won't be shown anywhere in the rails_admin unless you mark them as visible.
# There can be different reasons for that:
#  - belongs_to _id and _type (polymorphic) columns are hidden in favor of their associations
#  - associations are hidden if they have no matchable model found (model not included or non-existant)
#  - they are part of a bigger plan in a plugin (Devise/Paperclip) and hidden by contract
# Some fields may be hidden depending on the section, if they aren't deemed suitable for display or edition on that section
#  - non-editable columns (:id, :created_at, ..) in edit sections
#  - has_many/has_one associations in list section (hidden by default for performance reasons)
# Fields may also be marked as read_only (and thus not editable) if they are not mass-assignable by current_user

  # config.model OpeningHour do
  #   # Found associations:
  #   field :location, :belongs_to_association
  #   field :vendor, :belongs_to_association
  #   # Found columns:
  #   field :id, :integer
  #   field :vendor_id, :integer        # Hidden
  #   field :location_id, :integer        # Hidden
  #   field :weekday, :integer
  #   field :opening_time, :time
  #   field :is_active, :boolean
  #   field :version, :integer
  #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  #  end

# All fields marked as 'hidden' won't be shown anywhere in the rails_admin unless you mark them as visible.
# There can be different reasons for that:
#  - belongs_to _id and _type (polymorphic) columns are hidden in favor of their associations
#  - associations are hidden if they have no matchable model found (model not included or non-existant)
#  - they are part of a bigger plan in a plugin (Devise/Paperclip) and hidden by contract
# Some fields may be hidden depending on the section, if they aren't deemed suitable for display or edition on that section
#  - non-editable columns (:id, :created_at, ..) in edit sections
#  - has_many/has_one associations in list section (hidden by default for performance reasons)
# Fields may also be marked as read_only (and thus not editable) if they are not mass-assignable by current_user

  # config.model OrderHeader do
  #   # Found associations:
  #   field :vendor, :belongs_to_association
  #   field :location, :belongs_to_association
  #   field :order_type, :belongs_to_association
  #   field :order_state, :belongs_to_association
  #   field :order_lines, :has_many_association
  #   # Found columns:
  #   field :id, :integer
  #   field :vendor_id, :integer        # Hidden
  #   field :location_id, :integer        # Hidden
  #   field :shop_user_id, :integer
  #   field :order_type_id, :integer        # Hidden
  #   field :order_state_id, :integer        # Hidden
  #   field :order_datetime, :datetime
  #   field :time_requested, :time
  #   field :time_done, :time
  #   field :total_items, :integer
  #   field :deliver_cost, :integer
  #   field :vat_included, :integer
  #   field :order_total, :integer
  #   field :admin_received, :integer
  #   field :admin_prepared, :integer
  #   field :admin_delivered, :integer
  #   field :version, :integer
  #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  #  end

# All fields marked as 'hidden' won't be shown anywhere in the rails_admin unless you mark them as visible.
# There can be different reasons for that:
#  - belongs_to _id and _type (polymorphic) columns are hidden in favor of their associations
#  - associations are hidden if they have no matchable model found (model not included or non-existant)
#  - they are part of a bigger plan in a plugin (Devise/Paperclip) and hidden by contract
# Some fields may be hidden depending on the section, if they aren't deemed suitable for display or edition on that section
#  - non-editable columns (:id, :created_at, ..) in edit sections
#  - has_many/has_one associations in list section (hidden by default for performance reasons)
# Fields may also be marked as read_only (and thus not editable) if they are not mass-assignable by current_user

  # config.model OrderLine do
  #   # Found associations:
  #   field :add_on, :belongs_to_association
  #   field :order_header, :belongs_to_association
  #   # Found columns:
  #   field :id, :integer
  #   field :order_header_id, :integer        # Hidden
  #   field :quantity, :integer
  #   field :product_id, :integer
  #   field :add_on_id, :integer        # Hidden
  #   field :price_item, :integer
  #   field :price_line, :integer
  #   field :price_vat, :integer
  #   field :version, :integer
  #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  #  end

# All fields marked as 'hidden' won't be shown anywhere in the rails_admin unless you mark them as visible.
# There can be different reasons for that:
#  - belongs_to _id and _type (polymorphic) columns are hidden in favor of their associations
#  - associations are hidden if they have no matchable model found (model not included or non-existant)
#  - they are part of a bigger plan in a plugin (Devise/Paperclip) and hidden by contract
# Some fields may be hidden depending on the section, if they aren't deemed suitable for display or edition on that section
#  - non-editable columns (:id, :created_at, ..) in edit sections
#  - has_many/has_one associations in list section (hidden by default for performance reasons)
# Fields may also be marked as read_only (and thus not editable) if they are not mass-assignable by current_user

  # config.model OrderState do
  #   # Found associations:
  #   field :vendor, :belongs_to_association
  #   field :order_headers, :has_many_association
  #   # Found columns:
  #   field :id, :integer
  #   field :vendor_id, :integer        # Hidden
  #   field :name, :string
  #   field :sequence, :integer
  #   field :is_cancel, :boolean
  #   field :is_final, :boolean
  #   field :is_regular, :boolean
  #   field :is_active, :boolean
  #   field :version, :integer
  #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  #  end

# All fields marked as 'hidden' won't be shown anywhere in the rails_admin unless you mark them as visible.
# There can be different reasons for that:
#  - belongs_to _id and _type (polymorphic) columns are hidden in favor of their associations
#  - associations are hidden if they have no matchable model found (model not included or non-existant)
#  - they are part of a bigger plan in a plugin (Devise/Paperclip) and hidden by contract
# Some fields may be hidden depending on the section, if they aren't deemed suitable for display or edition on that section
#  - non-editable columns (:id, :created_at, ..) in edit sections
#  - has_many/has_one associations in list section (hidden by default for performance reasons)
# Fields may also be marked as read_only (and thus not editable) if they are not mass-assignable by current_user

  # config.model OrderType do
  #   # Found associations:
  #   field :vendor, :belongs_to_association
  #   field :delivery_costs, :has_many_association
  #   field :order_headers, :has_many_association
  #   # Found columns:
  #   field :id, :integer
  #   field :vendor_id, :integer        # Hidden
  #   field :name, :string
  #   field :is_pickup, :boolean
  #   field :is_delivery, :boolean
  #   field :is_active, :boolean
  #   field :version, :integer
  #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  #  end

# All fields marked as 'hidden' won't be shown anywhere in the rails_admin unless you mark them as visible.
# There can be different reasons for that:
#  - belongs_to _id and _type (polymorphic) columns are hidden in favor of their associations
#  - associations are hidden if they have no matchable model found (model not included or non-existant)
#  - they are part of a bigger plan in a plugin (Devise/Paperclip) and hidden by contract
# Some fields may be hidden depending on the section, if they aren't deemed suitable for display or edition on that section
#  - non-editable columns (:id, :created_at, ..) in edit sections
#  - has_many/has_one associations in list section (hidden by default for performance reasons)
# Fields may also be marked as read_only (and thus not editable) if they are not mass-assignable by current_user

  # config.model Product do
  #   # Found associations:
  #   field :vat, :belongs_to_association
  #   field :catalog, :belongs_to_association
  #   field :vendor, :belongs_to_association
  #   field :location, :belongs_to_association
  #   field :add_ons, :has_and_belongs_to_many_association
  #   field :variant, :has_many_association
  #   # Found columns:
  #   field :id, :integer
  #   field :vendor_id, :integer        # Hidden
  #   field :location_id, :integer        # Hidden
  #   field :catalog_id, :integer        # Hidden
  #   field :vat_id, :integer        # Hidden
  #   field :name, :string
  #   field :description_short, :string
  #   field :description_long, :text
  #   field :is_only_special_offer, :boolean
  #   field :is_delivery, :boolean
  #   field :is_pickup, :boolean
  #   field :is_active, :boolean
  #   field :version, :integer
  #   field :image_file_name, :string        # Hidden
  #   field :image_content_type, :string        # Hidden
  #   field :image_file_size, :integer        # Hidden
  #   field :image_updated_at, :datetime        # Hidden
  #   field :image, :paperclip_file
  #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  #  end

# All fields marked as 'hidden' won't be shown anywhere in the rails_admin unless you mark them as visible.
# There can be different reasons for that:
#  - belongs_to _id and _type (polymorphic) columns are hidden in favor of their associations
#  - associations are hidden if they have no matchable model found (model not included or non-existant)
#  - they are part of a bigger plan in a plugin (Devise/Paperclip) and hidden by contract
# Some fields may be hidden depending on the section, if they aren't deemed suitable for display or edition on that section
#  - non-editable columns (:id, :created_at, ..) in edit sections
#  - has_many/has_one associations in list section (hidden by default for performance reasons)
# Fields may also be marked as read_only (and thus not editable) if they are not mass-assignable by current_user

  # config.model ProductPrice do
  #   # Found associations:
  #   field :special_offer_type, :belongs_to_association
  #   field :location, :belongs_to_association
  #   field :customer_group, :belongs_to_association
  #   field :variant, :belongs_to_association
  #   # Found columns:
  #   field :id, :integer
  #   field :location_id, :integer        # Hidden
  #   field :customer_group_id, :integer        # Hidden
  #   field :product_variant_id, :integer
  #   field :price, :integer
  #   field :special_offer_type_id, :integer        # Hidden
  #   field :special_offer_from, :datetime
  #   field :special_offer_until, :datetime
  #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  #  end

# All fields marked as 'hidden' won't be shown anywhere in the rails_admin unless you mark them as visible.
# There can be different reasons for that:
#  - belongs_to _id and _type (polymorphic) columns are hidden in favor of their associations
#  - associations are hidden if they have no matchable model found (model not included or non-existant)
#  - they are part of a bigger plan in a plugin (Devise/Paperclip) and hidden by contract
# Some fields may be hidden depending on the section, if they aren't deemed suitable for display or edition on that section
#  - non-editable columns (:id, :created_at, ..) in edit sections
#  - has_many/has_one associations in list section (hidden by default for performance reasons)
# Fields may also be marked as read_only (and thus not editable) if they are not mass-assignable by current_user

  # config.model Role do
  #   # Found associations:
  #   field :role_navigations, :has_many_association
  #   # Found columns:
  #   field :id, :integer
  #   field :name, :string
  #   field :is_active, :boolean
  #   field :version, :integer
  #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  #  end

# All fields marked as 'hidden' won't be shown anywhere in the rails_admin unless you mark them as visible.
# There can be different reasons for that:
#  - belongs_to _id and _type (polymorphic) columns are hidden in favor of their associations
#  - associations are hidden if they have no matchable model found (model not included or non-existant)
#  - they are part of a bigger plan in a plugin (Devise/Paperclip) and hidden by contract
# Some fields may be hidden depending on the section, if they aren't deemed suitable for display or edition on that section
#  - non-editable columns (:id, :created_at, ..) in edit sections
#  - has_many/has_one associations in list section (hidden by default for performance reasons)
# Fields may also be marked as read_only (and thus not editable) if they are not mass-assignable by current_user

  # config.model RoleNavigation do
  #   # Found associations:
  #   field :navigation, :belongs_to_association
  #   field :role, :belongs_to_association
  #   # Found columns:
  #   field :id, :integer
  #   field :role_id, :integer        # Hidden
  #   field :navigation_id, :integer        # Hidden
  #   field :is_create, :boolean
  #   field :is_update, :boolean
  #   field :is_delete, :boolean
  #   field :version, :integer
  #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  #  end

# All fields marked as 'hidden' won't be shown anywhere in the rails_admin unless you mark them as visible.
# There can be different reasons for that:
#  - belongs_to _id and _type (polymorphic) columns are hidden in favor of their associations
#  - associations are hidden if they have no matchable model found (model not included or non-existant)
#  - they are part of a bigger plan in a plugin (Devise/Paperclip) and hidden by contract
# Some fields may be hidden depending on the section, if they aren't deemed suitable for display or edition on that section
#  - non-editable columns (:id, :created_at, ..) in edit sections
#  - has_many/has_one associations in list section (hidden by default for performance reasons)
# Fields may also be marked as read_only (and thus not editable) if they are not mass-assignable by current_user

  # config.model Salutation do
  #   # Found associations:
  #   field :shop_users, :has_many_association
  #   # Found columns:
  #   field :id, :integer
  #   field :name, :string
  #   field :is_active, :boolean
  #   field :version, :integer
  #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  #  end

# All fields marked as 'hidden' won't be shown anywhere in the rails_admin unless you mark them as visible.
# There can be different reasons for that:
#  - belongs_to _id and _type (polymorphic) columns are hidden in favor of their associations
#  - associations are hidden if they have no matchable model found (model not included or non-existant)
#  - they are part of a bigger plan in a plugin (Devise/Paperclip) and hidden by contract
# Some fields may be hidden depending on the section, if they aren't deemed suitable for display or edition on that section
#  - non-editable columns (:id, :created_at, ..) in edit sections
#  - has_many/has_one associations in list section (hidden by default for performance reasons)
# Fields may also be marked as read_only (and thus not editable) if they are not mass-assignable by current_user

  # config.model ServiceRegion do
  #   # Found associations:
  #   field :location, :belongs_to_association
  #   field :vendor, :belongs_to_association
  #   field :delivery_costs, :has_many_association
  #   # Found columns:
  #   field :id, :integer
  #   field :vendor_id, :integer        # Hidden
  #   field :location_id, :integer        # Hidden
  #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  #  end

# All fields marked as 'hidden' won't be shown anywhere in the rails_admin unless you mark them as visible.
# There can be different reasons for that:
#  - belongs_to _id and _type (polymorphic) columns are hidden in favor of their associations
#  - associations are hidden if they have no matchable model found (model not included or non-existant)
#  - they are part of a bigger plan in a plugin (Devise/Paperclip) and hidden by contract
# Some fields may be hidden depending on the section, if they aren't deemed suitable for display or edition on that section
#  - non-editable columns (:id, :created_at, ..) in edit sections
#  - has_many/has_one associations in list section (hidden by default for performance reasons)
# Fields may also be marked as read_only (and thus not editable) if they are not mass-assignable by current_user

  # config.model ShopUser do
  #   # Found associations:
  #   field :salutation, :belongs_to_association
  #   field :user_customer_groups, :has_many_association
  #   field :customer_groups, :has_many_association
  #   # Found columns:
  #   field :id, :integer
  #   field :salutation_id, :integer        # Hidden
  #   field :first_name, :string
  #   field :last_name, :string
  #   field :email_address, :string
  #   field :mobile_phone, :string
  #   field :password, :password
  #   field :birth_date, :date
  #   field :is_approved, :boolean
  #   field :is_active, :boolean
  #   field :version, :integer
  #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  #  end

# All fields marked as 'hidden' won't be shown anywhere in the rails_admin unless you mark them as visible.
# There can be different reasons for that:
#  - belongs_to _id and _type (polymorphic) columns are hidden in favor of their associations
#  - associations are hidden if they have no matchable model found (model not included or non-existant)
#  - they are part of a bigger plan in a plugin (Devise/Paperclip) and hidden by contract
# Some fields may be hidden depending on the section, if they aren't deemed suitable for display or edition on that section
#  - non-editable columns (:id, :created_at, ..) in edit sections
#  - has_many/has_one associations in list section (hidden by default for performance reasons)
# Fields may also be marked as read_only (and thus not editable) if they are not mass-assignable by current_user

  # config.model SpecialOfferType do
  #   # Found associations:
  #   field :vendor, :belongs_to_association
  #   field :product_prices, :has_many_association
  #   # Found columns:
  #   field :id, :integer
  #   field :vendor_id, :integer        # Hidden
  #   field :name, :string
  #   field :description, :text
  #   field :is_active, :boolean
  #   field :version, :integer
  #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  #  end

# All fields marked as 'hidden' won't be shown anywhere in the rails_admin unless you mark them as visible.
# There can be different reasons for that:
#  - belongs_to _id and _type (polymorphic) columns are hidden in favor of their associations
#  - associations are hidden if they have no matchable model found (model not included or non-existant)
#  - they are part of a bigger plan in a plugin (Devise/Paperclip) and hidden by contract
# Some fields may be hidden depending on the section, if they aren't deemed suitable for display or edition on that section
#  - non-editable columns (:id, :created_at, ..) in edit sections
#  - has_many/has_one associations in list section (hidden by default for performance reasons)
# Fields may also be marked as read_only (and thus not editable) if they are not mass-assignable by current_user

  # config.model State do
  #   # Found associations:
  #   field :delivery_addresses, :has_many_association
  #   field :locations, :has_many_association
  #   # Found columns:
  #   field :id, :integer
  #   field :name, :string
  #   field :is_active, :boolean
  #   field :version, :integer
  #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  #  end

# All fields marked as 'hidden' won't be shown anywhere in the rails_admin unless you mark them as visible.
# There can be different reasons for that:
#  - belongs_to _id and _type (polymorphic) columns are hidden in favor of their associations
#  - associations are hidden if they have no matchable model found (model not included or non-existant)
#  - they are part of a bigger plan in a plugin (Devise/Paperclip) and hidden by contract
# Some fields may be hidden depending on the section, if they aren't deemed suitable for display or edition on that section
#  - non-editable columns (:id, :created_at, ..) in edit sections
#  - has_many/has_one associations in list section (hidden by default for performance reasons)
# Fields may also be marked as read_only (and thus not editable) if they are not mass-assignable by current_user

  # config.model Translation do
  #   # Found associations:
  #   # Found columns:
  #   field :id, :integer
  #   field :shortcut, :string
  #   field :language_code, :string
  #   field :translation, :text
  #   field :version, :integer
  #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  #  end

# All fields marked as 'hidden' won't be shown anywhere in the rails_admin unless you mark them as visible.
# There can be different reasons for that:
#  - belongs_to _id and _type (polymorphic) columns are hidden in favor of their associations
#  - associations are hidden if they have no matchable model found (model not included or non-existant)
#  - they are part of a bigger plan in a plugin (Devise/Paperclip) and hidden by contract
# Some fields may be hidden depending on the section, if they aren't deemed suitable for display or edition on that section
#  - non-editable columns (:id, :created_at, ..) in edit sections
#  - has_many/has_one associations in list section (hidden by default for performance reasons)
# Fields may also be marked as read_only (and thus not editable) if they are not mass-assignable by current_user

  # config.model User do
  #   # Found associations:
  #   # Found columns:
  #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  #  end

# All fields marked as 'hidden' won't be shown anywhere in the rails_admin unless you mark them as visible.
# There can be different reasons for that:
#  - belongs_to _id and _type (polymorphic) columns are hidden in favor of their associations
#  - associations are hidden if they have no matchable model found (model not included or non-existant)
#  - they are part of a bigger plan in a plugin (Devise/Paperclip) and hidden by contract
# Some fields may be hidden depending on the section, if they aren't deemed suitable for display or edition on that section
#  - non-editable columns (:id, :created_at, ..) in edit sections
#  - has_many/has_one associations in list section (hidden by default for performance reasons)
# Fields may also be marked as read_only (and thus not editable) if they are not mass-assignable by current_user

  # config.model UserCustomerGroup do
  #   # Found associations:
  #   field :customer_group, :belongs_to_association
  #   field :shop_user, :belongs_to_association
  #   # Found columns:
  #   field :id, :integer
  #   field :shop_user_id, :integer        # Hidden
  #   field :customer_group_id, :integer        # Hidden
  #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  #  end

# All fields marked as 'hidden' won't be shown anywhere in the rails_admin unless you mark them as visible.
# There can be different reasons for that:
#  - belongs_to _id and _type (polymorphic) columns are hidden in favor of their associations
#  - associations are hidden if they have no matchable model found (model not included or non-existant)
#  - they are part of a bigger plan in a plugin (Devise/Paperclip) and hidden by contract
# Some fields may be hidden depending on the section, if they aren't deemed suitable for display or edition on that section
#  - non-editable columns (:id, :created_at, ..) in edit sections
#  - has_many/has_one associations in list section (hidden by default for performance reasons)
# Fields may also be marked as read_only (and thus not editable) if they are not mass-assignable by current_user

  # config.model Variant do
  #   # Found associations:
  #   field :product, :belongs_to_association
  #   field :catalog, :belongs_to_association
  #   field :product_prices, :has_many_association
  #   # Found columns:
  #   field :id, :integer
  #   field :catalog_id, :integer        # Hidden
  #   field :product_id, :integer        # Hidden
  #   field :sort_order, :integer
  #   field :name, :string
  #   field :description, :text
  #   field :is_active, :boolean
  #   field :version, :integer
  #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  #  end

# All fields marked as 'hidden' won't be shown anywhere in the rails_admin unless you mark them as visible.
# There can be different reasons for that:
#  - belongs_to _id and _type (polymorphic) columns are hidden in favor of their associations
#  - associations are hidden if they have no matchable model found (model not included or non-existant)
#  - they are part of a bigger plan in a plugin (Devise/Paperclip) and hidden by contract
# Some fields may be hidden depending on the section, if they aren't deemed suitable for display or edition on that section
#  - non-editable columns (:id, :created_at, ..) in edit sections
#  - has_many/has_one associations in list section (hidden by default for performance reasons)
# Fields may also be marked as read_only (and thus not editable) if they are not mass-assignable by current_user

  # config.model Vat do
  #   # Found associations:
  #   field :order_type, :belongs_to_association
  #   field :vendor, :belongs_to_association
  #   field :delivery_costs, :has_many_association
  #   field :products, :has_many_association
  #   # Found columns:
  #   field :id, :integer
  #   field :vendor_id, :integer        # Hidden
  #   field :name, :string
  #   field :order_type_id, :integer        # Hidden
  #   field :percentage, :integer
  #   field :is_included, :boolean
  #   field :is_active, :boolean
  #   field :version, :integer
  #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  #  end

# All fields marked as 'hidden' won't be shown anywhere in the rails_admin unless you mark them as visible.
# There can be different reasons for that:
#  - belongs_to _id and _type (polymorphic) columns are hidden in favor of their associations
#  - associations are hidden if they have no matchable model found (model not included or non-existant)
#  - they are part of a bigger plan in a plugin (Devise/Paperclip) and hidden by contract
# Some fields may be hidden depending on the section, if they aren't deemed suitable for display or edition on that section
#  - non-editable columns (:id, :created_at, ..) in edit sections
#  - has_many/has_one associations in list section (hidden by default for performance reasons)
# Fields may also be marked as read_only (and thus not editable) if they are not mass-assignable by current_user

  # config.model Vendor do
  #   # Found associations:
  #   field :admin_roles, :has_many_association
  #   field :catalogs, :has_many_association
  #   field :customer_groups, :has_many_association
  #   field :delivery_costs, :has_many_association
  #   field :delivery_lead_times, :has_many_association
  #   field :news, :has_many_association
  #   field :opening_hours, :has_many_association
  #   field :order_headers, :has_many_association
  #   field :order_states, :has_many_association
  #   field :products, :has_many_association
  #   field :service_regions, :has_many_association
  #   field :locations, :has_many_association
  #   field :special_offer_types, :has_many_association
  #   field :vats, :has_many_association
  #   # Found columns:
  #   field :id, :integer
  #   field :name, :string
  #   field :name_1, :string
  #   field :name_2, :string
  #   field :street_address01, :string
  #   field :street_address02, :string
  #   field :zip_code, :string
  #   field :city, :string
  #   field :phone, :string
  #   field :fax, :string
  #   field :email_address, :string
  #   field :home_specials_active, :boolean
  #   field :home_pending_orders_active, :boolean
  #   field :home_news_active, :boolean
  #   field :accept_pickup, :boolean
  #   field :accept_delivery, :boolean
  #   field :hotline_order, :string
  #   field :hotline_technical, :string
  #   field :version, :integer
  #   field :is_active, :boolean
  #   field :website, :string
  #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  #  end

end

# You made it this far? You're looking for something that doesn't exist! Add it to RailsAdmin and send us a Pull Request!
