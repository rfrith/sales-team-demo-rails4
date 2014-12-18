json.array!(@locations) do |location|
  json.extract! location, :id, :name, :address, :address2, :city, :state, :zip, :sales_rep_id
  json.url location_url(location, format: :json)
end
