class HomeController < ApplicationController
  def index
  end

  def create
  	@tweet = params[:tweet]
    SendTweet.new(@tweet).perform
    flash[:success] = "Votre tweet a bien été twitté !" 
    redirect_to root_path 
  end

end
