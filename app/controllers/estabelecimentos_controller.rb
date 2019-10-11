class EstabelecimentosController < ApplicationController
  before_action :set_estabelecimento, only: [:show, :edit, :update, :destroy]

  # GET /estabelecimentos
  def index
    @estabelecimentos = Estabelecimento.all
  end

  # GET /estabelecimentos/1
  def show
  end

  # GET /estabelecimentos/new
  def new
    @estabelecimento = Estabelecimento.new
  end

  # GET /estabelecimentos/1/edit
  def edit
  end

  # POST /estabelecimentos
  def create
    @estabelecimento = Estabelecimento.new(estabelecimento_params)

    if @estabelecimento.save
      redirect_to estabelecimentos_url, notice: t('messages.success.create', model: t('estabelecimento'), genero: 'o')
    else
      render :new
    end
  end

  # PATCH/PUT /estabelecimentos/1
  def update
    if @estabelecimento.update(estabelecimento_params)
      redirect_to estabelecimentos_url, notice: t('messages.success.update', model: t('estabelecimento'), genero: 'o')
    else
      render :edit
    end
  end

  # DELETE /estabelecimentos/1
  def destroy
    @estabelecimento.destroy
    redirect_to estabelecimentos_url, notice: t('messages.success.delete', model: t('estabelecimento'), genero: 'o')
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estabelecimento
      @estabelecimento = Estabelecimento.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def estabelecimento_params
      params.require(:estabelecimento).permit(:nome, :endereco, :ativo)
    end
end
