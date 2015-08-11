class CheckListsController < ApplicationController
  before_action :set_check_list, only: [:show, :edit, :update, :destroy]


  def index
    @check_lists = CheckList.all
  end

  def show
  end

  def new
    @check_list = CheckList.new
  end

  def edit
  end

  def create
    @check_list = CheckList.new(check_list_params)

    respond_to do |format|
      if @check_list.save
        format.html { redirect_to @check_list, notice: 'Check list was successfully created.' }
        format.json { render :show, status: :created, location: @check_list }
      else
        format.html { render :new }
        format.json { render json: @check_list.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @check_list.update(check_list_params)
        format.html { redirect_to @check_list, notice: 'Check list was successfully updated.' }
        format.json { render :show, status: :ok, location: @check_list }
      else
        format.html { render :edit }
        format.json { render json: @check_list.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @check_list.destroy
    respond_to do |format|
      format.html { redirect_to check_lists_url, notice: 'Check list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_check_list
      @check_list = CheckList.find(params[:id])
    end

    def check_list_params
      params.require(:check_list).permit(:title, :description)
    end
end
