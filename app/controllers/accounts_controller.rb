class AccountsController < ApplicationController

  def index
    @accounts = Account.all
  end
  



  def create
    @account = Account.new(account_params)
    #@article = Article.find(params[:article_id])
    #@account = @article.accounts.create(account_params)
    #redirect_to article_path(@article)
  end




  private 
  def account_params
    params.require(:account).permit(:name, :email)
  end


end
