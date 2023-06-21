class ItemsController < ApplicationController
    def index
        items = Item.all.order(price: :asc)
        render json: items, include: :user
    end
end
