json.array!(@cammands) do |cammand|
  json.extract! cammand, :id, :title, :description, :id_user
  json.url cammand_url(cammand, format: :json)
end
