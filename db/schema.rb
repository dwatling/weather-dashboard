# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140128121818) do

  create_table "weather_snapshots", force: true do |t|
    t.string   "source"
    t.string   "station_id"
    t.datetime "observation_time"
    t.string   "weather"
    t.float    "temp_f"
    t.float    "temp_c"
    t.float    "relative_humidity"
    t.string   "wind_dir"
    t.float    "wind_mph"
    t.float    "wind_gust_mph"
    t.float    "wind_kph"
    t.float    "wind_gust_kph"
    t.float    "pressure_mb"
    t.float    "dewpoint_f"
    t.float    "dewpoint_c"
    t.float    "heat_index_f"
    t.float    "heat_index_c"
    t.float    "windchill_f"
    t.float    "windchill_c"
    t.float    "feelslike_f"
    t.float    "feelslike_c"
    t.float    "visibility_mi"
    t.float    "visibility_km"
    t.float    "precip_1hr_in"
    t.float    "precip_1hr_metric"
    t.string   "icon"
    t.string   "icon_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "weather_snapshots", ["station_id", "observation_time"], name: "index_weather_snapshots_on_station_id_and_observation_time", unique: true

end
