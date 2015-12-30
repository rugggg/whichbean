json.array!(@terrains) do |terrain|
  json.extract! terrain, :id, :elevation, :groundwater, :exposure, :flavour_profile_id
  json.url terrain_url(terrain, format: :json)
end
