class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  def login

  end

  def verificar_usuario
    if existe_usuario
      if usuario_is_policia
        redirecionar_a_crear_boleta
      end
      if usuario_is_infractor
        redirecionar_a_ver_infracciones
      end
      if usuario_is_administrador
        redirecionar_a_inscripcion
      end
    else
       login
    end
  end

  def redirecionar_a_inscripcion
    redirect_to :controller => :inscripcions , :action => :index
  end

  def redirecionar_a_ver_infracciones
    redirect_to :controller => :mulct , :action => :index
  end

  def redirecionar_a_crear_boleta
      redirect_to :controller => :mulct , :action => :new
  end

  def redireccionar_a_crear_nota
    redirect_to  new_note_path
  end
  def  redirecionar_a_ver_nota
    redirect_to  :controller => :notes
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :password, :type_user)
    end
    def existe_usuario
      @user = User.find_by(name: params[:name])
      @password = User.find_by(password: params[:password])
      if @user and @password
        true
      else
        false
      end
    end

    def usuario_is_administrador
      @tipo = params[:type_user]
      if @tipo =='administrador'
        true
      else
        false
      end
    end

    def usuario_is_profesor
      @tipo = params[:type_user]
      if @tipo =='profesor'
       true
      else
        false
      end
    end

    def usuario_is_padre
      @tipo = params[:type_user]
      if @tipo =='padre'
        true
      else
        false
      end
    end

    def usuario_is_policia
      @tipo = params[:type_user]
      if @tipo =='policia'
        true
      else
        false
      end
    end

    def usuario_is_infractor
      @tipo = params[:type_user]
      if @tipo =='infractor'
        true
      else
        false
      end
    end


end
