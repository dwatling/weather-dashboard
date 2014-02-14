require 'net/http'

class PullController < ApplicationController

	def index
		config = {
			:api_key => WeatherDashboard::Application.config.wunderground[:api_key], 
			:city => WeatherDashboard::Application.config.wunderground[:city], 
			:state => WeatherDashboard::Application.config.wunderground[:state]
		}
		
		puller = WundergroundPuller.new
		json = fetch_json(puller.build_url(config))
		snapshot_json = puller.build_snapshot_json(json);

		snapshot = WeatherSnapshot.create(snapshot_json)
		snapshot.save

		render :nothing => true
	end

	def fetch_json(url)
		response = Net::HTTP.get_response(URI.parse(url));
		JSON.parse(response.body)
	end
end
