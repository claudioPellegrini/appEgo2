class FringesController < ApplicationController
  before_action :set_fringe, only: [:show, :edit, :update, :destroy]

  # GET /fringes
  # GET /fringes.json
  def index
    @fringes = Fringe.all
  end

  # GET /fringes/1
  # GET /fringes/1.json
  def show
  end

  # GET /fringes/new
  def new
    @fringe = Fringe.new
  end

  # GET /fringes/1/edit
  def edit
  end

  # POST /fringes
  # POST /fringes.json
  def create
    @fringe = Fringe.new(fringe_params)
    @fringe.fecha = Time.now
    respond_to do |format|
      if @fringe.save
        format.html { redirect_to @fringe, notice: 'Fringe was successfully created.' }
        format.json { render :show, status: :created, location: @fringe }
      else
        format.html { render :new }
        format.json { render json: @fringe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fringes/1
  # PATCH/PUT /fringes/1.json
  def update
    respond_to do |format|
      if @fringe.update(fringe_params)
        format.html { redirect_to @fringe, notice: 'Fringe was successfully updated.' }
        format.json { render :show, status: :ok, location: @fringe }
      else
        format.html { render :edit }
        format.json { render json: @fringe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fringes/1
  # DELETE /fringes/1.json
  def destroy
    @fringe.destroy
    respond_to do |format|
      format.html { redirect_to fringes_url, notice: 'Fringe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fringe
      @fringe = Fringe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fringe_params
      params.require(:fringe).permit(:fecha, :primera_hasta, :primera_precio, :segunda_hasta, :segunda_precio, :tercera_precio)
    end
end
