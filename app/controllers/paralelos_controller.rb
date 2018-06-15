class ParalelosController < ApplicationController
  before_action :set_paralelo, only: [:show, :edit, :update, :destroy]

  # GET /paralelos
  # GET /paralelos.json
  def index
    @paralelos = Paralelo.all
  end

  # GET /paralelos/1
  # GET /paralelos/1.json
  def show
  end

  # GET /paralelos/new
  def new
    @paralelo = Paralelo.new
  end

  # GET /paralelos/1/edit
  def edit
  end

  # POST /paralelos
  # POST /paralelos.json
  def create
    @paralelo = Paralelo.new(paralelo_params)

    respond_to do |format|
      if @paralelo.save
        format.html { redirect_to @paralelo, notice: 'Paralelo was successfully created.' }
        format.json { render :show, status: :created, location: @paralelo }
      else
        format.html { render :new }
        format.json { render json: @paralelo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paralelos/1
  # PATCH/PUT /paralelos/1.json
  def update
    respond_to do |format|
      if @paralelo.update(paralelo_params)
        format.html { redirect_to @paralelo, notice: 'Paralelo was successfully updated.' }
        format.json { render :show, status: :ok, location: @paralelo }
      else
        format.html { render :edit }
        format.json { render json: @paralelo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paralelos/1
  # DELETE /paralelos/1.json
  def destroy
    @paralelo.destroy
    respond_to do |format|
      format.html { redirect_to paralelos_url, notice: 'Paralelo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paralelo
      @paralelo = Paralelo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def paralelo_params
      params.require(:paralelo).permit(:letra)
    end
end
