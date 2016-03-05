Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, ENV['CCDB_GITHUB_ID'], ENV['CCDB_GITHUB_SECRET'], scope: "user:email"
end