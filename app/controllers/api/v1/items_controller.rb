class Api::V1::ItemsController < ApplicationController
    before_action :set_item, only: [:show, :edit, :update, :destroy]

    def index 
        items = Item.all
        render json: ItemSerializer.new(items)
    end

    def show
        item = Item.find_by(id: params[:id])
        render json: ItemSerializer.new(item)
    end

    def create
        list = List.find_by(params[:id])
        item = list.items.build(item_params)
        render json: item.save ? ItemSerializer.new(item) : {message: item.errors.messages[0]}
    end

    def edit
    end

    def update
        item = Item.find_by(id: params[:id])
        item.update(item_params)
        render json: ItemSerializer.new(item) 
    end

    def destroy
        item = Item.find_by(id: params[:id])
        item.delete
    end

    private

    def item_params
        params.require(:item).permit(:id, :content, :list_id)
    end

    def set_item
        item = Item.find(params[:id])
    end
end