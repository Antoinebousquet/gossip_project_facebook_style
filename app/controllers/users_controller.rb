class UsersController < ApplicationController

  # GET /users
  def index
    @users = User.all
  end

  # GET /users/id
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # POST /users
  def create
    @user = User.new(
    'first_name' => params[:first_name],
    'last_name' => params[:last_name],
    'password' => params[:password],
    'city_id' => params[:city_id],
    'email' => params[:email])

    if @user.save
      redirect_to gossips_path, notice: 'User was successfully created.'
    else
      render 'new'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:first_name, :last_name, :password, :city_id, :email)
    end
end
