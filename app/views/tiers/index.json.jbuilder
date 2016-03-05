json.array!(@tiers) do |tier|
  json.extract! tier, :id, :service_id, :name, :description, :annual_cost, :prereq_id
  json.url tier_url(tier, format: :json)
end
