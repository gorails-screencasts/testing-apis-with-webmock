class JsonIp
  def self.ip
    uri = URI('https://jsonip.org/')
    response = Net::HTTP.get(uri)
    JSON.parse(response)["ip"]
  end
end
