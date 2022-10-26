class AuthorsController < ApplicationController
  def index
    @author = Author.all
  end
  
  def new
  end 

  def create
    @author = Author.new(params.require(:author).permit(:last_name, :first_name, :homepage))
       
    @author.save
    redirect_to @author
  end

  def show
    @author = Author.find(params[:id])
  end
end
