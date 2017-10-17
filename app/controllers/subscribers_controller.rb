class SubscribersController < ApplicationController
  def create
  	@subscriber = Subscriber.new(subscriber_params)
  	respond_to do |format|
	  	if @subscriber.save
        format.html { redirect_to pages_home_path, notice: 'Subscriber Saved.' }
	  	else
	  		format.html { render pages_home_path }
	  	end
	  end
  end

  private

  def subscriber_params
  	params.require(:subscriber).permit(:name, :email)
  end

end
