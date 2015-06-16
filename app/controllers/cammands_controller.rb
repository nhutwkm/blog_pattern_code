class CammandsController < ApplicationController
  before_action :set_cammand, only: [:show, :edit, :update, :destroy]

  # GET /cammands
  # GET /cammands.json
  def index
    @cammands = Cammand.all
  end

  # GET /cammands/1
  # GET /cammands/1.json
  def show
  end

  # GET /cammands/new
  def new
    @cammand = Cammand.new
  end

  # GET /cammands/1/edit
  def edit
  end

  # POST /cammands
  # POST /cammands.json
  def create
    @cammand = Cammand.new(cammand_params)

    respond_to do |format|
      if @cammand.save
        format.html { redirect_to @cammand, notice: 'Cammand was successfully created.' }
        format.json { render :show, status: :created, location: @cammand }
      else
        format.html { render :new }
        format.json { render json: @cammand.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cammands/1
  # PATCH/PUT /cammands/1.json
  def update
    respond_to do |format|
      if @cammand.update(cammand_params)
        format.html { redirect_to @cammand, notice: 'Cammand was successfully updated.' }
        format.json { render :show, status: :ok, location: @cammand }
      else
        format.html { render :edit }
        format.json { render json: @cammand.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cammands/1
  # DELETE /cammands/1.json
  def destroy
    @cammand.destroy
    respond_to do |format|
      format.html { redirect_to cammands_url, notice: 'Cammand was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cammand
      @cammand = Cammand.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cammand_params
      params.require(:cammand).permit(:title, :description, :id_user)
    end
end
