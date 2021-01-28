class DinosaurSearchesController < ApplicationController

    def show
        @dinosaur_search = DinosaurSearch.find(params[:id])
    end 

    def new 
        @dinosaur_search = DinosaurSearch.new
        @species = Dinosaur.distinct.pluck(:species)
    end

    def create
        @dinosaur_search = DinosaurSearch.create(search_params)
        redirect_to @dinosaur_search
    end 

    private

    def search_params
        params.require(:dinosaur_search).permit(:name, :species)
    end 

end
