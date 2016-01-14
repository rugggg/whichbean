json.array!(@beans) do |bean|
  json.extract! bean, :id, :name, :producer_id, :roaster_id, :varietal, :preparation, :drying, :roast_id
  json.url bean_url(bean, format: :json)
end
