json.array!(@votes) do |vote|
  json.extract! vote, :id, :law_id, :vote_date, :number, :result
  json.url vote_url(vote, format: :json)
end
