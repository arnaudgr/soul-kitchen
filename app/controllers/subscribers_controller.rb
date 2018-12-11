class SubscribersController < ApplicationController
  
    
    before_action :set_subscriber, only: [:destroy]

    def create
      @subscriber = Subscriber.create(subscriber_params)
      if @subscriber.save
        flash[:notice] = "Vous êtes bien inscrit.e à notre Newsletter : l'actualité bouillante" 
        redirect_to root_path
      else
        flash[:notice] = "Merci de réessayez"
      end
    end

     private

      	def set_subscriber
        	@subscriber = Subscriber.find(params[:id])
      	end

      	def subscriber_params
        	params.require(:subscriber).permit(:name, :email)
     	end
    
end
