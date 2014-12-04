class PrescriptionController < ApplicationController
layout 'home'
  def index
    @search = Medicine.search(params[:q])
    @mains = Medicine.search(params[:q])
    @search.sorts = 'name' if @search.sorts.empty?
    @medicines = @search.result.page(params[:page]).per(4)
    @search.build_condition
    @mycart = cookies[:cart].nil? ? [] : cookies[:cart].split("&")
  end
  def autocomplete
  	@mysearch = Medicine.search({name_cont: params[:query]}).result.pluck(:name)
  	@render = {query: params[:query],suggestions: @mysearch, data: @mysearch}
  	render json: @render
  end
end
