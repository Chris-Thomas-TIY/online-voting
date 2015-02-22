class ConstituentsController < ApplicationController

  def new
    @constituent = Constituent.new
  end

  def create
    Constituent.create(constituent_params)
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
  end

  def show
  end

  private
    def constituent_params
      params.require(:constituent).permit(:email, :name, :password)
    end
end
