json.array!(@deputies) do |deputy|
  json.extract! deputy, :id, :ln, :fn, :sn, :birthday, :fraction_id
  json.url deputy_url(deputy, format: :json)
end
