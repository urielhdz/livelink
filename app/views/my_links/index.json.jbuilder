json.array!(@my_links) do |my_link|
  json.extract! my_link, :id
  json.url my_link_url(my_link, format: :json)
end
