class SearchesController < ApplicationController
  before_action :authenticate_user!
  
  def search
    @range = params[:range]
    
    if @range == "User"
      @users = User.looks(params[:serach], params[:word])
    else
      @books = Book.looks(params[:serach], params[:word])
    end
  end
end
