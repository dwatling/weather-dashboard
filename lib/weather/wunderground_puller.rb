class WundergroundPuller
	def build_url(config)
		'http://api.wunderground.com/api/' + config[:api_key] + '/conditions/q/' + config[:state] + '/' + config[:city] + '.json';
	end

	def build_snapshot_json(response)
		json = response['current_observation']

		# transform results from one key to another before rejecting below
		json['source'] = 'wunderground'
		# end transform

		json = json.reject{|k,v| !WeatherSnapshot.new.attributes.keys.member?(k.to_s)}
		
		json
	end
end
