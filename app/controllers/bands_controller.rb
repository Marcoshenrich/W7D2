class BandsController < ApplicationController
    before_action :set_band, only: [:show, :edit, :update, :destroy]

    def index
        @bands = Band.all
    end

    def create
    end

    def new 
        @band = Band.new
    end

    def edit 
        set_band
    end

    def show
        set_band
    end

    def update
        set_band
    end

    def destroy
        set_band
    end

    def set_band
        @band = Band.find_by(id: params[:id])
    end

end