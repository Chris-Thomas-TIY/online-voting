class ConstituentsController < ApplicationController

  def new
  end

  def create
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
