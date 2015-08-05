class ItemsController < ApplicationController
	before_action :set_check_list
	
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


	private 

	def set_check_list
		@check_list = CheckList.find(params[:check_list_id])
	end 

	def item_params
		params[:item].permit(:content)
	end 
end 

