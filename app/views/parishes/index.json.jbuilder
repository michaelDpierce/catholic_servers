json.array!(@parishes) do |parish|
  json.extract! parish, :id
  json.url parish_url(parish, format: :json)
end
