json.array!(@laws) do |law|
  json.extract! law, :id, :name, :fraction_id, :status
  json.url law_url(law, format: :json)
end
