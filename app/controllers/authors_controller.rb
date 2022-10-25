class AuthorsController < ApplicationController
    def new
    end 

    def create
        @author = Author.new(params.require(:author).permit(:last_name, :first_name, :homepage))
       
        @author.save
        redirect_to root_path, notice: 'Success!'
      end
end
