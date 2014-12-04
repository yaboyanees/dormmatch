json.array!(@rooms) do |room|
  json.extract! room, :id, :room_num, :dorm_id
  json.url room_url(room, format: :json)
end
