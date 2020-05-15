class LineItemsController < ApplicationController

    def create
        
        chosen_snack = Snack.find(params[:snack_id])
        current_cart = @current_cart

        if current_cart.snacks.include?(chosen_snack)
            @line_item = current_cart.line_items.find_by(:snack_id => chosen_snack)
            @line_item.quantity += 1
        else
            @line_item = LineItem.new
            @line_item.cart = current_cart
            @line_item.snack = chosen_snack
        end

        @line_item.save
        redirect_to cart_path(current_cart)
    end

    def add_quantity
        @line_item = LineItem.find(params[:id])
        @line_item.quantity += 1
        @line_item.save
        redirect_to cart_path(@current_cart)
    end
      
    def reduce_quantity
        @line_item = LineItem.find(params[:id])
        if @line_item.quantity > 1
          @line_item.quantity -= 1
        end
        @line_item.save
        #puts "Line Item: #{@line_item.snack_id} Quantity: #{@line_item.quantity}"
        redirect_to cart_path(@current_cart)
    end

    def destroy
        @line_item = LineItem.find(params[:id])
        @line_item.destroy
        redirect_to cart_path(@current_cart)
    end 

end

private
    def line_item_params
        params.require(:line_item).permit(:quantity,:snack_id, :cart_id)
    end
