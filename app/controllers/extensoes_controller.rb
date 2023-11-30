class ExtensoesController < ApplicationController
  def index
    @extensoes = Extension.all
  end

  def show
    @extensoes = Extension.find(params[:id])
  end

  def new
    @extensoes = Extension.new
  end

  def create
    @extensoes = Extension.new(extensoes_params)

    if @extensoes.save
      redirect_to @extensoes
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @extensoes = Extension.find(params[:id])
  end

  def update
    @extensoes = Extension.find(params[:id])

    if @extensoes.update(extensoes_params)
      redirect_to @extensoes
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @extensoes = Extension.find(params[:id])
    @extensoes.destroy

    redirect_to root_path
  end

  private
    def extensoes_params
      params.require(:extensoes).permit(:modalidade, :nome, :horas, :orientador)
    end

end
