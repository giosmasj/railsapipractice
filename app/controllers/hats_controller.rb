class HatsController < ApplicationController

    def index
        @hats = Hat.all
        render json: @hats
    end

    def show
        @hat = Hat.find(params[:id])
        render json: @hat
    end

    def create
        @hat = Hat.create(
            color: params[:color],
            style: params[:style],
            price: params[:price]
        )
        render json: @hat
    end

    def update
        @hat = Hat.find(params[:id])
        @hat.update(
            color: params[:color],
            style: params[:style],
            price: params[:price]
        )
        render json: @hat
    end

    def destroy
        @hat = Hat.find(params[:id])
        @hat.destroy
        render json: {message: "HAT MF DELETED YO"}
    end
end
