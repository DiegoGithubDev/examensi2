class ReportesController < ApplicationController
  def index
    @empleados = Empleado.all
    @clientes = Teacher.all
  end
end
