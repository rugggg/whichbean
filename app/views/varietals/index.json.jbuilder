json.array!(@varietals) do |varietal|
  json.extract! varietal, :id, :name, :flavour_profile_id
  json.url varietal_url(varietal, format: :json)
end
