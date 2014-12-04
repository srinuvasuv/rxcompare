class DiscountController < ApplicationController
layout 'home'
  def index
  	 @search = Website.search(params[:q])
  	 @search.sorts = 'name' if @search.sorts.empty?
     @websites = @search.result.page(params[:page]).per(20)
  end
end
