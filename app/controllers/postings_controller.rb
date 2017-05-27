class PostingsController < ApplicationController
  def index
    @postings = Posting.all
    @current_user = current_user
  end

  def show
    @posting= Posting.find(params[:id])
    
  end
end
