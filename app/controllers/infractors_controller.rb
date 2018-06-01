class InfractorsController < ApplicationController
  before_action :set_infractor, only: [:show, :edit, :update, :destroy]

  # GET /infractors
  # GET /infractors.json
  def index
    @infractors = Infractor.all
  end

  # GET /infractors/1
  # GET /infractors/1.json
  def show
  end

  # GET /infractors/new
  def new
    @infractor = Infractor.new
  end

  # GET /infractors/1/edit
  def edit
  end

  # POST /infractors
  # POST /infractors.json
  def create
    @infractor = Infractor.new(infractor_params)

    respond_to do |format|
      if @infractor.save
        format.html { redirect_to @infractor, notice: 'Infractor was successfully created.' }
        format.json { render :show, status: :created, location: @infractor }
      else
        format.html { render :new }
        format.json { render json: @infractor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /infractors/1
  # PATCH/PUT /infractors/1.json
  def update
    respond_to do |format|
      if @infractor.update(infractor_params)
        format.html { redirect_to @infractor, notice: 'Infractor was successfully updated.' }
        format.json { render :show, status: :ok, location: @infractor }
      else
        format.html { render :edit }
        format.json { render json: @infractor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /infractors/1
  # DELETE /infractors/1.json
  def destroy
    @infractor.destroy
    respond_to do |format|
      format.html { redirect_to infractors_url, notice: 'Infractor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_infractor
      @infractor = Infractor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def infractor_params
      params.require(:infractor).permit(:nombre, :apellido_paterno, :apellido_materno, :numero_de_licencia, :fecha_de_emision, :fecha_de_vencimiento, :sexo, :nacionalidad)
    end
end
