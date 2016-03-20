json.array!(@fraction_votes) do |fraction_vote|
  json.extract! fraction_vote, :id, :fraction_id, :vote_id, :number_of_present, :yes, :no, :dont_know
  json.url fraction_vote_url(fraction_vote, format: :json)
end
