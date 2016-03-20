json.array!(@fractions) do |fraction|
  json.extract! fraction, :id, :name, :quantity, :deputy_id
  json.url fraction_url(fraction, format: :json)
end
