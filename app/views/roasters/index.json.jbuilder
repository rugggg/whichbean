json.array!(@roasters) do |roaster|
  json.extract! roaster, :id, :name
  json.url roaster_url(roaster, format: :json)
end
