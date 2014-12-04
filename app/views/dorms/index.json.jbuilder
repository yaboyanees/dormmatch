json.array!(@dorms) do |dorm|
  json.extract! dorm, :id, :name, :price, :location, :num_roomates, :dorm_image, :room_image, :school_id
  json.url dorm_url(dorm, format: :json)
end
