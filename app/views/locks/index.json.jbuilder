json.array!(@locks) do |lock|
  json.extract! lock, :id, :tier, :region
  json.url lock_url(lock, format: :json)
end
