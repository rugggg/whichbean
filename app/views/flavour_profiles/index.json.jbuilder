json.array!(@flavour_profiles) do |flavour_profile|
  json.extract! flavour_profile, :id, :body, :fruit_notes, :spice_notes, :chocolate_notes, :grain_notes, :roast_notes, :floral_notes, :nut_notes, :sugar_notes, :savory_notes
  json.url flavour_profile_url(flavour_profile, format: :json)
end
