
class RailsEngineService
  def self.conn
    Faraday.new(url: "http://localhost:3000")
  end

  def self.get_all_merchants
    response = conn.get("/api/v1/merchants")

    JSON.parse(response.body, symbolize_names: true)
  end
end
