class PostingsController < ApplicationController
  def index
    @postings = Posting.all
    @current_user = current_user
  end

  def show
    @posting= Posting.find(params[:id])

  end

  def splash
    @current_user = current_user
    @postings = Posting.order('created_at DESC')
  end
end
