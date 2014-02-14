module SnapshotPullerHelper

	def self.getTestJson

<<-eos
{
  "response": {
  "version":"0.1",
  "termsofService":"http://www.wunderground.com/weather/api/d/terms.html",
  "features": {
  "conditions": 1
  }
        }
  ,     "current_observation": {
                "image": {
                "url":"http://icons-ak.wxug.com/graphics/wu2/logo_130x80.png",
                "title":"Weather Underground",
                "link":"http://www.wunderground.com"
                },
                "display_location": {
                "full":"McHenry, IL",
                "city":"McHenry",
                "state":"IL",
                "state_name":"Illinois",
                "country":"US",
                "country_iso3166":"US",
                "zip":"60050",
                "magic":"1",
                "wmo":"99999",
                "latitude":"42.34313965",
                "longitude":"-88.26515961",
                "elevation":"226.00000000"
                },
                "observation_location": {
                "full":"Stilling Woods, McHenry, Illinois",
                "city":"Stilling Woods, McHenry",
                "state":"Illinois",
                "country":"US",
                "country_iso3166":"US",
                "latitude":"42.351479",
                "longitude":"-88.231102",
                "elevation":"797 ft"
                },
                "estimated": {
                },
                "station_id":"KILMCHEN11",
                "observation_time":"Last Updated on January 31, 5:45 AM CST",
                "observation_time_rfc822":"Fri, 31 Jan 2014 05:45:08 -0600",
                "observation_epoch":"1391168708",
                "local_time_rfc822":"Fri, 31 Jan 2014 06:04:26 -0600",
                "local_epoch":"1391169866",
                "local_tz_short":"CST",
                "local_tz_long":"America/Chicago",
                "local_tz_offset":"-0600",
                "weather":"Clear",
                "temperature_string":"13.6 F (-10.2 C)",
                "temp_f":13.6,
                "temp_c":-10.2,
                "relative_humidity":"69%",
                "wind_string":"From the NE at 3.0 MPH Gusting to 6.0 MPH",
                "wind_dir":"NE",
                "wind_degrees":45,
                "wind_mph":3.0,
                "wind_gust_mph":"6.0",
                "wind_kph":4.8,
                "wind_gust_kph":"9.7",
                "pressure_mb":"1019",
                "pressure_in":"30.10",
                "pressure_trend":"+",
                "dewpoint_string":"5 F (-15 C)",
                "dewpoint_f":5,
                "dewpoint_c":-15,
                "heat_index_string":"NA",
                "heat_index_f":"NA",
                "heat_index_c":"NA",
                "windchill_string":"14 F (-10 C)",
                "windchill_f":"14",
                "windchill_c":"-10",
                "feelslike_string":"14 F (-10 C)",
                "feelslike_f":"14",
                "feelslike_c":"-10",
                "visibility_mi":"10.0",
                "visibility_km":"16.1",
                "solarradiation":"--",
                "UV":"0","precip_1hr_string":"0.00 in ( 0 mm)",
                "precip_1hr_in":"0.00",
                "precip_1hr_metric":" 0",
                "precip_today_string":"0.00 in (0 mm)",
                "precip_today_in":"0.00",
                "precip_today_metric":"0",
                "icon":"clear",
                "icon_url":"http://icons-ak.wxug.com/i/c/k/nt_clear.gif",
                "forecast_url":"http://www.wunderground.com/US/IL/McHenry.html",
                "history_url":"http://www.wunderground.com/weatherstation/WXDailyHistory.asp?ID=KILMCHEN11",
                "ob_url":"http://www.wunderground.com/cgi-bin/findweather/getForecast?query=42.351479,-88.231102"
        }
}
eos
	end
end
