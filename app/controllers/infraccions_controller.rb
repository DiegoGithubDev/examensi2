class InfraccionsController < ApplicationController
  before_action :set_infraccion, only: [:show, :edit, :update, :destroy]

  # GET /infraccions
  # GET /infraccions.json
  def index
    @infraccions = Infraccion.all
  end

  # GET /infraccions/1
  # GET /infraccions/1.json
  def show
  end

  # GET /infraccions/new
  def new
    @infraccion = Infraccion.new
  end

  # GET /infraccions/1/edit
  def edit
  end

  # POST /infraccions
  # POST /infraccions.json
  def create
    @infraccion = Infraccion.new(infraccion_params)

    respond_to do |format|
      if @infraccion.save
        format.html { redirect_to @infraccion, notice: 'Infraccion was successfully created.' }
        format.json { render :show, status: :created, location: @infraccion }
      else
        format.html { render :new }
        format.json { render json: @infraccion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /infraccions/1
  # PATCH/PUT /infraccions/1.json
  def update
    respond_to do |format|
      if @infraccion.update(infraccion_params)
        format.html { redirect_to @infraccion, notice: 'Infraccion was successfully updated.' }
        format.json { render :show, status: :ok, location: @infraccion }
      else
        format.html { render :edit }
        format.json { render json: @infraccion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /infraccions/1
  # DELETE /infraccions/1.json
  def destroy
    @infraccion.destroy
    respond_to do |format|
      format.html { redirect_to infraccions_url, notice: 'Infraccion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_infraccion
      @infraccion = Infraccion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def infraccion_params
      params.require(:infraccion).permit(:fecha, :infractor_id, :policia_id, :tipo_infraccion_id, :vehiculo_id, :monto_infracion)
    end
end
