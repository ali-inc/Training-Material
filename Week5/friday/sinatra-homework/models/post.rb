class Post

  attr_accessor :id, :title, :body

  def self.open_connection
    conn = PG.connect(dbname: "blog")
  end

  def self.all
    conn = self.open_connection

    sql = "SELECT * FROM post ORDER BY id"

    results = conn.exec(sql)

    posts = results.map do |tuple|
      self.hydrate(tuple)
    end

    return posts
  end

  def self.find(id)
    conn = self.open_connection
    sql = "SELECT * FROM post WHERE id = #{id}"
    results = conn.exec(sql)

    return self.hydrate(results[0])

  end

  def self.hydrate(post_data)
    post = Post.new

    post.id = post_data['id']
    post.title = post_data['title']
    post.body = post_data['body']

    return post
  end

  def save
    conn = Post.open_connection

    if (self.id)
      sql = "UPDATE post SET title='#{self.title}', body='#{self.body}' WHERE id = #{self.id}"
    else
      sql = "INSERT INTO post(title, body) VALUES('#{self.title}','#{self.body}')"
    end

    conn.exec(sql)
  end

  def self.destroy(id)
    conn = self.open_connection
    sql = "DELETE FROM post WHERE id = #{id}"
    conn.exec(sql)

  end

end
