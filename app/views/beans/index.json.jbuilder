json.array!(@beans) do |bean|
  json.extract! bean, :id, :name, :location_id, :integer, :terrain_id, :integer, :weather_id, :integer, :cultivation_id, :integer, :varietal_id, :integer, :harvest_id, :integer, :preparation_id, :integer, :drying_id, :integer, :roast_id, :integer
  json.url bean_url(bean, format: :json)
end
