class Item

  attr_accessor :id, :name, :description

  def self.open_connection
    conn = PG.connect(dbname: "shop")
  end

  def self.all
    conn = self.open_connection
    sql = "SELECT * FROM inventory ORDER BY id"
    results = conn.exec(sql)
    inventory = results.map do |tuple|
      self.hydrate(tuple)
    end
    return inventory
  end

  def self.find(id)
    conn = self.open_connection
    sql = "SELECT * FROM inventory WHERE id = #{id}"
    results = conn.exec(sql)
    return self.hydrate(results[0])
  end

  def self.hydrate(inventory_item)
    item = Item.new
    item.id = inventory_item['id']
    item.name = inventory_item['name']
    item.description = inventory_item['description']
    return item
  end

  def save
    conn = Item.open_connection
    if (self.id)
      sql = "UPDATE inventory SET name='#{self.name}', description='#{self.description}' WHERE id = #{self.id}"
    else
      sql = "INSERT INTO inventory(name, description) VALUES('#{self.name}','#{self.description}')"
    end
    conn.exec(sql)
  end

  def self.destroy(id)
    conn = self.open_connection
    sql = "DELETE FROM inventory WHERE id = #{id}"
    conn.exec(sql)
  end

end
