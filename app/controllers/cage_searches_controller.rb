class CageSearchesController < ApplicationController

    def show
        @cage_search = CageSearch.find(params[:id])
    end 

    def new 
        @cage_search = CageSearch.new
        @power_statuses = Cage.distinct.pluck(:power_status)
    end

    def create
        @cage_search = CageSearch.create(search_params)
        redirect_to @cage_search
    end 

    private

    def search_params
        params.require(:cage_search).permit(:name, :power_status)
    end 

end
