class PagesController < ApplicationController
  def home
    @subscriber = Subscriber.new
    prismic = PrismicCall.new
    @results = prismic.call_api
  end
end
