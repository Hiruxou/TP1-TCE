class ClientsController < ApplicationController
  before_action :set_client, only: [:show, :edit, :update, :destroy]

  # GET /clients
  # GET /clients.json
  def index
    @clients = Client.all
  end

  # GET /clients/1
  # GET /clients/1.json
  def show
  end

  # GET /clients/new
  def new
    @client = Client.new
    @client.build_Adress
  end

  # GET /clients/1/edit
  def edit
  end

  # POST /clients
  # POST /clients.json
  def create

    @client = Client.new(client_params)
    if @client.save
      respond_to do |format|
        format.html { redirect_to(clients_path, :notice => 'Le client « ' + @client.Prenom + ' ' + @client.Nom + ' » a été crée') }
      end
    else
      render :new
    end
  end

  # PATCH/PUT /clients/1
  # PATCH/PUT /clients/1.json
  def update
    respond_to do |format|
      if @client.update(client_params)
        format.html { redirect_to @client, notice: 'Client a été mise à jour.' }
        format.json { render :show, status: :ok, location: @client }
      else
        format.html { render :edit }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clients/1
  # DELETE /clients/1.json  
  def destroy
    @client.destroy
    respond_to do |format|
      format.html { redirect_to clients_url, notice: 'Client a été supprimer.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client
      @client = Client.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def client_params
      params.require(:client).permit(:Prenom, :Nom, :DateNaissance, :nas, :Adress_id, :NombresEnfants, :CompteTaxesProprietaire,
      Etude_attributes: [:id, :_destroy, :SecteurEtudes, :Niveau, :DateDebut, :DateComplition, :client_id],
      Adress_attributes: [:id, :_destroy, :Rue, :Ville, :NumeroCivique, :CodePostal, :Province ],
      Institution_attributes: [:id, :_destroy, :Nom, :client_id])
    end
end