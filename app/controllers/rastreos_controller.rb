class RastreosController < ApplicationController
  def create
    @empleado = Empleado.find(params[:empleado_id])
    puts 'parametros empleado'+ params[:empleado_id].inspect
    puts 'parametros de rastreo' + params[:rastreo_params].inspect
    @rastreo = @empleado.rastreos.create(rastreo_params)
    @rastreo.save
    redirect_to empleado_path(@empleado)
  end

  private
  def rastreo_params
    params.require(:rastreo).permit(:latitud, :longitud, :image, :fecha)
  end
end
