class AccountsController < ApplicationController

  def index
    @accounts = Account.all
  end

  def show
    @account = Account.find(params[:account_id])
  end

  def new
  
  end

  def create
    @account = Account.new(account_params)

    @account.save
    redirect_to @account
  end

  private 
  def account_params
    params.require(:account).permit(:name, :email)
  end


end
