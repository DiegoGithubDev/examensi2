module ApplicationHelper
  def user_is_admin?
    if session[:logueado]== true and session[:type_user]== 'administrador'
      true
    else
      false
    end
  end
  def user_is_empleado?
    if session[:logueado]== true and session[:type_user]== 'trabajador'
      true
    else
      false
    end
  end
end
