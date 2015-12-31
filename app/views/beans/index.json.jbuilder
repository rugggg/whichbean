json.array!(@beans) do |bean|
  json.extract! bean, :id, :name, :location_id, :terrain_id, :weather_id, :cultivation_id, :varietal_id, :harvest_id, :preparation_id, :drying_id, :roast_id
  json.url bean_url(bean, format: :json)
end
