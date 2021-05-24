class SubscribersController < ApplicationController
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
