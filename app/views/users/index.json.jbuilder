json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :uid, :provider, :is_admin
  json.url user_url(user, format: :json)
end
