class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end
  def new
    @tweets = Tweet.new
  end
  def create
    Tweets.create(tweet_params)
  end
  
  private
  def tweet_params
    params.require(:tweet).permit(:name, :image, :text)
  end
end
