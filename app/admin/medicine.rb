ActiveAdmin.register Medicine do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end
  permit_params :name, :ing, :country_name, :dispense, :rx, :generic, :price, :buy
  active_admin_importable

  index do
    column "Name", :name
    column "Ingredient", :ing
    column "Country", :country_name
    column "Dispense", :dispense
    column "Rx", :rx
    column "Generic", :generic
    column "Price", :price
    column "Link", :buy
    actions
  end
end
