class QuotesController < ApplicationController

	def new
		@quote = Quote.new
	end

	def create
		@quote = Quote.new(params[:quote])
		@quote.request = request
		if @quote.deliver
			flash.now[:error] = nil
		else
			flash.now[:error] = 'Cannot send request.'
			render :new
		end
	end

end
