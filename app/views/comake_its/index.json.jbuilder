json.array!(@comake_its) do |comake_it|
  json.extract! comake_it, :id, :name, :email, :password
  json.url comake_it_url(comake_it, format: :json)
end
