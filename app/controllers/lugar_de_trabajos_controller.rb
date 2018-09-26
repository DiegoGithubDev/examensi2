class LugarDeTrabajosController < ApplicationController
    def create
      @empleado = Empleado.find(params[:empleado_id])
      @lugar_de_trabajo = @empleado.lugar_de_trabajos.create(lugar_de_trabajo_params)
      @lugar_de_trabajo.save
      redirect_to empleado_path(@empleado)
    end

    private
    def lugar_de_trabajo_params
      params.require(:lugar_de_trabajo).permit(:zona, :direccion, :descripcion)
    end

end
