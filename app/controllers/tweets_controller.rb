class TweetsController < ApplicationController
    def index
        @tweet = Tweet.all
        render 'tweets/index'
    end

    def create
        @tweet = Tweet.new(tweet_params)

        if @tweet.save
            render 'tweets/create'
        end
    end

    def destroy
        @tweet = Tweet.find_by(id: params[:id])

        if @tweet and @tweet.destroy
            render json: { success: true }
        else
            render json: { success: false }
        end
    end

    private

    def tweet_params
        params.require{ tweet: { message: "message" } }
    end
end
