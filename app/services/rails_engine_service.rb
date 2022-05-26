class RailsEngineService
  def self.conn
    Faraday.new(url: "https://localhost:3000")
  end

  def self.get_all_merchants
    response = conn.get("/api/v1/merchants") do |c|
      c.options.params_encoder = Faraday::FlatParamsEncoder
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.gets_single_merchants
    response = conn.get("/api/v1/merchants/:id")
    JSON.parse(response.body, symbolize_names: true)
  end
end
