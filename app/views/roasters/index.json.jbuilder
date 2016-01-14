json.array!(@roasters) do |roaster|
  json.extract! roaster, :id, :name, :latitude, :longitude, :country, :region, :address, :zip
  json.url roaster_url(roaster, format: :json)
end
