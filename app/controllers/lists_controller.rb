class ListsController < ApplicationController

  def home

  end

  def index
    List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.save

    redirect to list_path(@list)
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    @list = List.find(params[:id])
    @list.update(list_params)

    redirect to list_path(@list)
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy

    redirect to lists_path(@list)
  end

  private

  def list_params
    params.require(:list).permits(:name)
  end

end
