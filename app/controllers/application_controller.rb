class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_locale, :set_query
 
  def set_locale
   I18n.locale = params[:locale] || I18n.default_locale
  end

  def set_query
  	@mains = Medicine.search(params[:q])
  end

end
