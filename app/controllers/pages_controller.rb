class PagesController < ApplicationController
  def home
  	@subscriber = Subscriber.new
  end

  def monkey
  	@formstuff = params[:monkey]
  end
end
