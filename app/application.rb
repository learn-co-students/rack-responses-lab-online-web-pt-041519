class Application
  def call(env)
    resp = Rack::Response.new

    time = Time.now.hour

    resp.write time < 11 ? "Good Morning!" : "Good Afternoon!"

    resp.finish
  end
end
