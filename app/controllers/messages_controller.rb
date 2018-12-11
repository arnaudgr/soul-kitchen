class MessagesController < ApplicationController
 
  	def new
       @contact = Message.new
 	 end

    def create
       @contact = Message.new(params[:contact])
      if @contact.save
        MessageMailer.general_message(@contact).deliver
        render :thanks
        else
        render :new
      end
  	end
  
  def thanks
  	puts "ça marche"
  end
end