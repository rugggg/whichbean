json.array!(@harvests) do |harvest|
  json.extract! harvest, :id, :ripeness, :flavour_profile_id
  json.url harvest_url(harvest, format: :json)
end
