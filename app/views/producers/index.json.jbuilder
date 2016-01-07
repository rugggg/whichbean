json.array!(@producers) do |producer|
  json.extract! producer, :id, :name, :latitude, :longitude, :country, :region, :elevation_min, :elevation_max
  json.url producer_url(producer, format: :json)
end
