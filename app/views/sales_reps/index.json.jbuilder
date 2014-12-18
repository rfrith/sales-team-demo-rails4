json.array!(@sales_reps) do |sales_rep|
  json.extract! sales_rep, :id, :unique_id, :first_name, :last_name, :sales_group_id
  json.url sales_rep_url(sales_rep, format: :json)
end
