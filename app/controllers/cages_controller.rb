class CagesController < ApplicationController
  before_action :set_cage, only: %w[ show edit update destroy ]

  # GET /cages
  # GET /cages.json
  def index
    @cages = Cage.search(params[:search])
  end

  # GET /cages/1
  # GET /cages/1.json
  def show
  end

  # GET /cages/new
  def new
    @cage = Cage.new
  end

  # GET /cages/1/edit
  def edit
  end

  # POST /cages
  # POST /cages.json
  def create
    @cage = Cage.new(cage_params)

    respond_to do |format|
      if @cage.save
        format.html { redirect_to @cage, notice: "Cage was successfully created." }
        format.json { render :show, status: :created, location: @cage }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cages/1
  # PATCH/PUT /cages/1.json
  def update
    respond_to do |format|
      if @cage.update(cage_params)
        format.html { redirect_to @cage, notice: "Cage was successfully updated." }
        format.json { render :show, status: :ok, location: @cage }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cages/1
  # DELETE /cages/1.json
  def destroy
    @cage.destroy
    respond_to do |format|
      format.html { redirect_to cages_url, notice: "Cage was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cage
      @cage = Cage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cage_params
      params.require(:cage).permit(:name, :max_capacity, :number_of_dinosaurs, :power_status, :search)
    end
end