class BillsController < ApplicationController
  def new
    @bill = Bill.new
  end

  def create
    Bill.create(bill_params)
    redirect_to bills_path
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
    @bills = Bill.all
  end

  def show
  end

  private
    def bill_params
      params.require(:bill).permit(:actual_vote, :name)
    end
end
