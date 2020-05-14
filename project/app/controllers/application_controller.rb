class ApplicationController < ActionController::Base

  before_action :cart

  def cart 
    @cart = Cart.create
  end 

end
