
class Application

    def call(env)
        #binding.pry
        resp = Rack::Response.new
        date = Time.now.hour

        if date > 12
            resp.write "Good Afternoon!"
        else
            resp.write "Good Morning!"
        end
        resp.finish
    end
end