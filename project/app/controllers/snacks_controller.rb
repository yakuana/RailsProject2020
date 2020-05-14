class SnacksController < ApplicationController
    def index 
        @snack = Snack.all
    end 
    
    def show 
        @snack = Snack.find(params[:id])
    end 

    # def create 
    #     @snack = Snack.new(snack_params)

    #     if @snack.save
    #         redirect_to @snack 
    #     else
    #         render 'new'
    #     end
    # end 

    # def update 
    #     @snack = Snack.find(params[:id])

    #     if @snack.update(snack_params)
    #         redirect_to @snack
    #     else
    #         render 'edit'
    #     end
    # end

    # def destroy 
    #     @snack = Snack.find(params[:id])
    #     @snack.destroy

    #     redirect_to snacks_path
    # end 

    private
        def snack_params
            params.require(:snack).permit(:name, :price)
        end
end
