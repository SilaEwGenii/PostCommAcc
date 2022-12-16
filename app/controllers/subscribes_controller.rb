class SubscribesController < ApplicationController


    def index
        @subscribe = Subscribe.all   
      end
      
      def show
            #выводит выбранный элемент и показывает его
      end
    
      def new 
        @subscribe = Subscribe.new     # страница создания аккаунтов
      end

      def create
        @subscribe = Subscribe.new(sub_params)         #создание аккаунтов
        if @subscribe.save                              # если аккаунт создаётся переводит на страницу нового акканта 
          redirect_to :back                   # если аккаунт создаётся переводит на страницу нового акканта 
        else                                      # если нет то возвращает на страницу создания аккаунтов
          render 'new'# если нет то возвращает на страницу создания аккаунтов
        end
      end


      private 

      def sub_params
        params.require(:subscribe).permit(:subscribe, :account_id)
      end
end
