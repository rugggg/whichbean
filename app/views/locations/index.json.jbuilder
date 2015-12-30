json.array!(@locations) do |location|
  json.extract! location, :id, :farm_name, :latitude, :longitude, :terrain_id, :weather_id, :flavour_profile_id
  json.url location_url(location, format: :json)
end
