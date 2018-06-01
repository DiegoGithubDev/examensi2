class PoliciaController < ApplicationController
  before_action :set_policium, only: [:show, :edit, :update, :destroy]

  # GET /policia
  # GET /policia.json
  def index
    @policia = Policium.all
  end

  # GET /policia/1
  # GET /policia/1.json
  def show
  end

  # GET /policia/new
  def new
    @policium = Policium.new
  end

  # GET /policia/1/edit
  def edit
  end

  # POST /policia
  # POST /policia.json
  def create
    @policium = Policium.new(policium_params)

    respond_to do |format|
      if @policium.save
        format.html { redirect_to @policium, notice: 'Policium was successfully created.' }
        format.json { render :show, status: :created, location: @policium }
      else
        format.html { render :new }
        format.json { render json: @policium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /policia/1
  # PATCH/PUT /policia/1.json
  def update
    respond_to do |format|
      if @policium.update(policium_params)
        format.html { redirect_to @policium, notice: 'Policium was successfully updated.' }
        format.json { render :show, status: :ok, location: @policium }
      else
        format.html { render :edit }
        format.json { render json: @policium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /policia/1
  # DELETE /policia/1.json
  def destroy
    @policium.destroy
    respond_to do |format|
      format.html { redirect_to policia_url, notice: 'Policium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_policium
      @policium = Policium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def policium_params
      params.require(:policium).permit(:nombre, :apellido_paterno, :apellido_materno, :cargo)
    end
end
