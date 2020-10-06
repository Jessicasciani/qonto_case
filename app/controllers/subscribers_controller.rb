class SubscribersController < ApplicationController
  def create
    @subscriber = Subscriber.new(subscriber_params)
    if @subscriber.save
      redirect_to root_path
    end
  end


  private

  def subscriber_params
    params[:subscriber].permit(:email)
  end

end
