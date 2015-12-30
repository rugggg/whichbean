json.array!(@preparations) do |preparation|
  json.extract! preparation, :id, :type, :flavour_profile_id
  json.url preparation_url(preparation, format: :json)
end
