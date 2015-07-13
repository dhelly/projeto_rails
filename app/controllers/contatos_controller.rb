class ContatosController < InheritedResources::Base
  
   def create
        @contato = Contato.new(contato_params)
            # ...
      if @contato.save
        redirect_to :action => :index
      else
         redirect_to :action => :new
      end
   end

  private

    def contato_params
      params.require(:contato).permit(:nome, :email, :mensagem)
    end
end

