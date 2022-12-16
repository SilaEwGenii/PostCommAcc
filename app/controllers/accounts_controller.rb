class AccountsController < ApplicationController

  def index
    @accounts = Account.all   # вывод всех аккауентов на страницу аккауентов
  end
  
  def show
    @account = Account.find(params[:id]) #выводит выбранный элемент и показывает его
    @subs = @account.subscribe
  end

  def new 
    @account = Account.new     # страница создания аккаунтов
  end


  def create                                  #создание аккаунтов
    @account = Account.new(account_params)         #создание аккаунтов
    if @account.save                              # если аккаунт создаётся переводит на страницу нового акканта 
      redirect_to @account                   # если аккаунт создаётся переводит на страницу нового акканта 
    else                                      # если нет то возвращает на страницу создания аккаунтов
      render 'new'# если нет то возвращает на страницу создания аккаунтов
    end# если нет то возвращает на страницу создания аккаунтов
  end


  def edit
    @account = Account.find(params[:id])              #страница редактирования аккаунтов
  end 

  def update                                          #редактирование аккаунтов
    @account= Account.find(params[:id])                    #редактирование аккаунтов       
 
    if @account.update(account_params)            # если аккаунт редактируется переводит на страницу отредактированного акканта 
      redirect_to @account# если аккаунт редактируется переводит на страницу отредактированного акканта 
    else
      render 'edit'                                 #если нет по возвращает на страницу редактирования аккаунтов
    end
  end


  def destroy
    @account = Account.find(params[:id])  #выбирает по айди
    @account.destroy        #Удаляет строку из таблицы 
    redirect_to accounts_path    # возвращает на страницу аккаунтов
  end



  private 
  def account_params
    params.require(:account).permit(:name, :email)
  end


end
