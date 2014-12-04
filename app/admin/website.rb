ActiveAdmin.register Website do
    permit_params :name, :url, :pno, :faxno, :email, :cipa, :pickr, :vipps, :pcname, :pctitle, :pcemail, :pcphone, :active, :fees, :feetype
    active_admin_importable
end