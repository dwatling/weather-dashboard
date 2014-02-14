class CreateWeatherSnapshots < ActiveRecord::Migration
  def change
    create_table :weather_snapshots do |t|

			t.string :source
			t.string :station_id
		  t.datetime :observation_time
		  t.string :weather
		  t.float :temp_f
		  t.float :temp_c
		  t.float :relative_humidity
	    t.string :wind_dir
		  t.float :wind_mph
		  t.float :wind_gust_mph
		  t.float :wind_kph
		  t.float :wind_gust_kph
		  t.float :pressure_mb
	    t.float :dewpoint_f
	    t.float :dewpoint_c
	 	  t.float :heat_index_f
		  t.float :heat_index_c
		  t.float :windchill_f
		  t.float :windchill_c
		  t.float :feelslike_f
		  t.float :feelslike_c
		  t.float :visibility_mi
		  t.float :visibility_km
		  t.float :precip_1hr_in
		  t.float :precip_1hr_metric
		  t.string :icon
		  t.string :icon_url
			
      t.timestamps

    end
		add_index :weather_snapshots, [:station_id, :observation_time], :unique => true
  end
end
