class RastreosController < ApplicationController
  def create
    @empleado = Empleado.find(params[:empleado_id])
    @rastreo = Rastreo.new(rastreo_params)
    @rastreo.save
    redirect_to empleado_path(@empleado)
  end

  private
  def rastreo_params
    params.require(:rastreo).permit(:latitud, :longitud, :image)
  end
end
