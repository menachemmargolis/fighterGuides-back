class UserGuidesController < ApplicationController

    def index
        user_guides = UserGuide.all

        render json: user_guides
    end 

    def show
        user_guide = UserGuide.find(params[:id])

        render json: user_guide
    end 

    def edit
    end 

    def update
        user_guide = UserGuide.find(params[:id])
        user_guide.update(params.permit(:character_id, :user_id, :guide_image, :content, :title, :likes))
        render json: user_guide

    end 

    def new
    end 

    def create
        user_guide = UserGuide.create(params.permit(:character_id, :user_id, :guide_image, :content, :title, :likes))
        render json: user_guide
    end

    def destroy
        user_guide = UserGuide.find(params[:id])
        user_guide.destroy!
        render json: {}
    end 


end
