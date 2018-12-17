class ArtworksController < ApplicationController
    # attr_reader :params
    # def initialize
    #   @params = params
    # end
    def show
      render json: Artwork.find(params[:id])
    end

    def create
      artwork = Artwork.new(artwork_params)
      if artwork.save
        render json: artwork
      else
        render json: artwork.errors.full_messages, status: :unprocessable_entity
      end
    end

    def index
      visible_artworks = Artwork.find_by()
      render json: Artwork.all
    end

    def update
      # debugger
      artwork_to_update = Artwork.find(params[:id])
      artwork_to_update.update!(artwork_params)
      render json: artwork_to_update
    end

    def destroy
      artwork = Artwork.find(params[:id])
      artwork.destroy
      render json: artwork

    end

    def edit

    end

    private

    def artwork_params
      params.require(:artwork).permit(:title, :image_url, :artist_id)
    end
end