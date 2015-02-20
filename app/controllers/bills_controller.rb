class BillsController < ApplicationController
  def new
  end

  def create
    @bill = Bill.new(bill_params)
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
    def bill_params
      params.require(:bill).permit(:actual_vote, :name)
    end
end
