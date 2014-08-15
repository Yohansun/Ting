json.array!(@costs) do |cost|
  json.extract! cost, :id, :name, :student_id, :price
  json.url cost_url(cost, format: :json)
end
