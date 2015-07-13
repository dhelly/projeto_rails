class LeiturasController < InheritedResources::Base
  
   def create
        @leitura = Leitura.new(leitura_params)
            # ...
      if @leitura.save
        redirect_to :action => :index
      else
         redirect_to :action => :new
      end
   end
    

  private

    def leitura_params
      params.require(:leitura).permit(:titulo, :autor, :mes, :duracao, :observ, :user_id)
    end
end

