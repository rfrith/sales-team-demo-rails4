json.array!(@sales_groups) do |sales_group|
  json.extract! sales_group, :id, :unique_id, :description
  json.url sales_group_url(sales_group, format: :json)
end
