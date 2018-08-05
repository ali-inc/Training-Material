class Country

  attr_accessor :id, :country_name, :population, :gdp, :capital, :continent

  def self.open_connection
    conn = PG.connect(dbname: "shop")
  end






end
