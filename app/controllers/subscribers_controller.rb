class SubscribersController < ApplicationController
  def index
    @subscribers = Subscriber.all
    # render json: {subscribers: @subscribers}
 
  end

  def show
    @subscriber = Subscriber.find params[:id]
    render json: {subscriber: @subscriber}
  end

  def create
    subscriber = Subscriber.create!(
      email: params['subscriber']['email'],
      first_name: params['subscriber']['first_name'],
      last_name: params['subscriber']['last_name'],
      deals: params['subscriber']['deals'],
      reviews: params['subscriber']['reviews'],
      packages: params['subscriber']['packages'],
      star_ships: params['subscriber']['star_ships'],
      mars: params['subscriber']['mars'],
      jupiter: params['subscriber']['jupiter'],
      moon: params['subscriber']['moon'],
      saturn: params['subscriber']['saturn'],
      uranus: params['subscriber']['uranus'],
      neptune: params['subscriber']['neptune'],
      the_nearest_black_hole: params['subscriber']['the_nearest_black_hole'],
      the_endless_void: params['subscriber']['the_endless_void'],
      frequency: params['subscriber']['frequency'],
      the_sun: params['subscriber']['the_sun'],
      pluto: params['subscriber']['pluto'],
      mercury: params['subscriber']['mercury'],
      venus: params['subscriber']['venus'],
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
