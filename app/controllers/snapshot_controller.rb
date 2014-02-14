
class SnapshotController < ApplicationController

	def index
		snapshots = WeatherSnapshot.order(:source, :station_id, :observation_time).where(:observation_time => 24.hours.ago..0.hours.ago)

		sources = snapshots.map { |o| o.source }.uniq
		result = {}
		sources.each do |src|
			source_stations = snapshots.select { |o| o.source == src}
			stations = source_stations.map{ |o| o.station_id}.uniq
			source_data = {}
			stations.each do |station|
				station_data = snapshots.select{|o| o.station_id == station}
				
				source_data[station] = station_data
			end	

			source_data = source_data.sort_by { |x,y| source_data[x].length }.reverse

			result[src] = source_data
		end


		
		respond_to do |format|
			format.json { render :json => result }
		end
	end
end
