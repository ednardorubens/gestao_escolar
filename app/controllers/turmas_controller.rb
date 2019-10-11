class TurmasController < ApplicationController
  before_action :set_turma, only: [:show, :edit, :update, :destroy]

  # GET /turmas
  def index
    @turmas = Turma.all
  end

  # GET /turmas/1
  def show
  end

  # GET /turmas/new
  def new
    @turma = Turma.new
  end

  # GET /turmas/1/edit
  def edit
  end

  # POST /turmas
  def create
    @turma = Turma.new(turma_params)

    if @turma.save
      redirect_to turmas_url, notice: t('messages.success.create', model: t('turma'), genero: 'a')
    else
      render :new
    end
  end

  # PATCH/PUT /turmas/1
  def update
    if @turma.update(turma_params)
      redirect_to turmas_url, notice: t('messages.success.update', model: t('turma'), genero: 'a')
    else
      render :edit
    end
  end

  # DELETE /turmas/1
  def destroy
    @turma.destroy
    redirect_to turmas_url, notice: t('messages.success.delete', model: t('turma'), genero: 'a')
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_turma
      @turma = Turma.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def turma_params
      params.require(:turma).permit(:nome, :codigo, :ativo)
    end
end
