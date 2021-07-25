class Api::V1::ListsController < ApplicationController
    before_action :set_list, only: [:show, :edit, :update, :destroy]

    def index
        lists = List.all
        #binding.pry
        #render json: lists, include: [:items]
        render json: ListSerializer.new(lists)
    end

    def show
        list = List.find_by(id: params[:id])
        render json: ListSerializer.new(list)
    end

    def create
        list = List.new(list_params)
        render json: list.save ? ListSerializer.new(list) : {message: list.errors.messages[0]}
    end

    def edit
    end

    def update
        list = List.find_by(id: params[:id])
        list.update(list_params)
        render json: ListSerializer.new(list)
    end

    def destroy
        list = List.find_by(id: params[:id])
        list.destroy
    end

    private

    def list_params
        params.require(:list).permit(:title)
    end

    def set_list
        list = List.find(params[:id])
    end

end
 

   