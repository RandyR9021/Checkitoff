class ItemsController < ApplicationController
	before_action :set_check_list
	before_action :set_item, except: [:create]
	
	def create
		@item = @check_list.items.create(item_params)
		redirect_to @check_list
	end

	def destroy
		@item = @check_list.items.find(params[:id])
		if @item.destroy
			flash[:success] = "Check List item was deleted successfully."
		else
			flash[:error] = "Check List item could not be deleted. Please try again."
		end 
		redirect_to @check_list
	end 

	def complete
		@item.update_attribute(:completed_at, Time.now)
		redirect_to @check_list, notice: "Item was completed."
	end 



	private 

	def set_check_list
		@check_list = CheckList.find(params[:check_list_id])
	end 

	def set_item
		@item = @check_list.items.find(params[:id])
	end 

	def item_params
		params[:item].permit(:content)
	end 
end 

