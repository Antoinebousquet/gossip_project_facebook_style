class GossipsController < ApplicationController
  before_action :set_gossip, only: [:show, :edit, :update, :destroy]

  # GET /gossips
  def index
    @gossips = Gossip.all.sort
  end

  # GET /gossips/1
  def show
  end

  # GET /gossips/new
  def new
    @gossip = Gossip.new
  end

  # GET /gossips/1/edit
  def edit
  end

  # POST /gossips
  def create
    @gossip = Gossip.new(gossip_params)
    if @gossip.save
      redirect_to gossips_path, notice: 'Gossip was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /gossips/1
  def update
    if @gossip.update(gossip_params)
      redirect_to @gossip, notice: 'Gossip was successfully updated.'
    else
      render :edit 
    end
  end

  # DELETE /gossips/1
  def destroy
    @gossip.destroy
    redirect_to gossips_url, notice: 'Gossip was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gossip
      @gossip = Gossip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gossip_params
      params.require(:gossip).permit(:title, :content, :user_id)
    end
end
