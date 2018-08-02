module Api
  module V1
    class SongsController < ApplicationController
 
      def index
        render json: Song.all
      end

      def create
      	@song = Song.new(song_params)

      	if @song.save
      		render json: @song
      	else
      		render json: @song.errors, status: :unprocessable_entity
      	end
      end

      private

      def song_params
      	params.permit(:name, :artist_name, :song_data)
      end
 
    end
  end
end
