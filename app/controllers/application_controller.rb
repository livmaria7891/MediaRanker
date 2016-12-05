class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def order_by_rank(media_type, limit)
    media_type.order(rank: :desc).limit(limit)
  end

  def upvotes(media_type)
     type = media_type.find(params[:id].to_i)
    type.rank += 1
    type.save

    redirect_to :back
  end

end
