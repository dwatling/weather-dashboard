class PushController < ApplicationController

	def index
		snapshot = WeatherSnapshot.create(params);
		snapshot.save

		render :nothing => true
	end
end
