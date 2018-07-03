class HomeController < ApplicationController
  #skip_before_action :authorize

  include CurrentCart
  before_action :set_cart
  
  def index
    #@cart = current_cart
    
    if params[:query].present?
      @products = Product.where("loai_id = 1").search_name(params[:query]).paginate(page: params[:page], per_page: 10)
    else
      @products = Product.where("loai_id = 1").all.paginate(page: params[:page], per_page: 10)
    end
    @hots = Product.where("hot = true").limit(5).order("RANDOM()")    
  end
end