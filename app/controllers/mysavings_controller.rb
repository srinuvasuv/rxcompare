class MysavingsController < ApplicationController
layout 'home'
  def index
  	@mycart = cookies[:cart].nil? ? [] : cookies[:cart].split("&")
	  @savings = Medicine.search({id_in: @mycart}).result unless @mycart.empty?
  end
  def create 
  	mycookies = cookies[:cart].nil? ? [] : cookies[:cart].split("&")
  	mycookies << params[:id] unless params[:id].nil?
  	cookies[:cart] = mycookies
  	redirect_to request.referer
  end
  def remove
  	@mycart = cookies[:cart].nil? ? [] : cookies[:cart].split("&")
  	@mycart.delete(params[:id])
  	cookies[:cart] = @mycart
  	redirect_to request.referer
  end
end
