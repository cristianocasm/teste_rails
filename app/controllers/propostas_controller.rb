class PropostasController < ApplicationController
  before_action :set_proposta, only: [:show, :edit, :update, :destroy]

  # GET /propostas
  # GET /propostas.json
  def index
    @propostas = Proposta.all
  end

  # GET /propostas/1
  # GET /propostas/1.json
  def show
  end

  # GET /propostas/new
  def new
    @proposta = Proposta.new
  end

  # GET /propostas/1/edit
  def edit
  end

  # POST /propostas
  # POST /propostas.json
  def create
    @proposta = Proposta.new(proposta_params)

    respond_to do |format|
      if @proposta.save
        format.html { redirect_to @proposta, notice: 'Proposta criada com sucesso.' }
        format.json { render :show, status: :created, location: @proposta }
      else
        format.html {
          flash[:error] = flash_errors(@proposta)
          render :new
        }
        format.json { render json: @proposta.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /propostas/1
  # PATCH/PUT /propostas/1.json
  def update
    respond_to do |format|
      if @proposta.update(proposta_params)
        format.html { redirect_to @proposta, notice: 'Proposta atualizada com sucesso.' }
        format.json { render :show, status: :ok, location: @proposta }
      else
        format.html { render :edit }
        format.json { render json: @proposta.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /propostas/1
  # DELETE /propostas/1.json
  def destroy
    @proposta.destroy
    respond_to do |format|
      format.html { redirect_to propostas_url, notice: 'Proposta excluída com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proposta
      @proposta = Proposta.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def proposta_params
      params.require(:proposta).permit(:nome, :descricao, :valor, :inicio, :fim, :cidade)
    end
end
