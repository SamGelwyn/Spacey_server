class SubscribersController < ApplicationController
  def index
    @subscribers = Subscriber.all
    render json: {subscribers: @subscribers}
 
  end

  def show
    @subscriber = Subscriber.find params[:id]
    render json: {subscriber: @subscriber}
  end

  def create
    subscriber = Subscriber.create!(
      email: params['subscriber']['email'],
      first_name: params['subscriber']['first_name'],
      last_name: params['subscriber']['last_name']
    )

    if subscriber
      render json: {
        status: :created,
        subscriber: subscriber
      }
    else
      render json: { status: 500 }
    end
  end
end
