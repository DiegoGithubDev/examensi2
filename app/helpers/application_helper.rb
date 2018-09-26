module ApplicationHelper
  def user_is_admin?
    if session[:logueado]== true and session[:type_user]== 'admin' and session[:nombre]== 'admin'
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
