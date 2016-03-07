json.array!(@rest_lists) do |rest_list|
  json.extract! rest_list, :id, :rest_name, :description, :phone_num, :street_address, :city, :state, :zipcode, :menu_link
  json.url rest_list_url(rest_list, format: :json)
end
