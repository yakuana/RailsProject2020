class WelcomeController < ApplicationController
  def index 
  end 

  # def index 
  #   @welcome = Welcome.all
  # end 

  # def show 
  #   @welcome = Welcome.find(params[:id])
  # end 

  # def create 
  #   @welcome = Welcome.new(welcome_params)

  #   if @welcome.save
  #       redirect_to @welcome 
  #   else
  #       render 'new'
  #   end
  # end 

  # def update 
  #   @welcome = Welcome.find(params[:id])

  #   if @welcome.update(welcome_params)
  #       redirect_to @welcome
  #   else
  #       render 'edit'
  #   end
  # end

  # def destroy 
  #   @welcome = Welcome.find(params[:id])
  #   @welcome.destroy

  #   redirect_to welcomes_path
  # end 
end
