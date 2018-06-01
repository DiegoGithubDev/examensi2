class TipoInfraccionsController < ApplicationController
  before_action :set_tipo_infraccion, only: [:show, :edit, :update, :destroy]

  # GET /tipo_infraccions
  # GET /tipo_infraccions.json
  def index
    @tipo_infraccions = TipoInfraccion.all
  end

  # GET /tipo_infraccions/1
  # GET /tipo_infraccions/1.json
  def show
  end

  # GET /tipo_infraccions/new
  def new
    @tipo_infraccion = TipoInfraccion.new
  end

  # GET /tipo_infraccions/1/edit
  def edit
  end

  # POST /tipo_infraccions
  # POST /tipo_infraccions.json
  def create
    @tipo_infraccion = TipoInfraccion.new(tipo_infraccion_params)

    respond_to do |format|
      if @tipo_infraccion.save
        format.html { redirect_to @tipo_infraccion, notice: 'Tipo infraccion was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_infraccion }
      else
        format.html { render :new }
        format.json { render json: @tipo_infraccion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_infraccions/1
  # PATCH/PUT /tipo_infraccions/1.json
  def update
    respond_to do |format|
      if @tipo_infraccion.update(tipo_infraccion_params)
        format.html { redirect_to @tipo_infraccion, notice: 'Tipo infraccion was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_infraccion }
      else
        format.html { render :edit }
        format.json { render json: @tipo_infraccion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_infraccions/1
  # DELETE /tipo_infraccions/1.json
  def destroy
    @tipo_infraccion.destroy
    respond_to do |format|
      format.html { redirect_to tipo_infraccions_url, notice: 'Tipo infraccion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_infraccion
      @tipo_infraccion = TipoInfraccion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_infraccion_params
      params.require(:tipo_infraccion).permit(:nombre, :monto)
    end
end
