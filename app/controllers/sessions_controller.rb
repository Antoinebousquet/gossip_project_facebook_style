class SessionsController < ApplicationController
  # before_action :set_session, only: [:show, :edit, :update, :destroy]

  # GET /session/new
  def new
    
  end

  def create
    # cherche s'il existe un utilisateur en base avec l’e-mail
    user = User.find_by(email: params[:email])

    # on vérifie si l'utilisateur existe bien ET si on arrive à l'authentifier (méthode bcrypt) avec le mot de passe 
    if user && user.authenticate(password: @password)
      session[:user_id] = user.id
      # redirige où tu veux, avec un flash ou pas
      flash.now[:danger] = 'GG'
       redirect_to root_path

    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'gossips'
    end
  end


  # DELETE /session/1
  def destroy
    @session.destroy
    redirect_to session_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_session
      @session = session.find(params[:id])
    end

    # # Never trust parameters from the scary internet, only allow the white list through.
    # def gossip_params
    #   params.require(:session).permit(:title, :content, :user_id)
    # end
end
