class AccountsController < ApplicationController


  def show
    @account = Account.find(params[:id])
  end

  def new
    @account = Account.new
  end

  def create
    @account = Account.new(account_params)
  end

  def edit
    @account = Account.find(params[:id])
  end

  def update
    @account = Account.find(params[:id])

  end

  def destroy

  end

  private
  def account_params
    require(:account).permit(:user_id, :account_number, :tier_id)
  end


end
