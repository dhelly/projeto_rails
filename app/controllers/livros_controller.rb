class LivrosController < InheritedResources::Base
  
   def create
        @livro = Livro.new(livro_params)
            # ...
      if @livro.save
        redirect_to :action => :index
      else
         redirect_to :action => :new
      end
   end
    

  private

    def livro_params
      params.require(:livro).permit(:isbn, :titulo, :autor, :editora, :picture)
    end
end

