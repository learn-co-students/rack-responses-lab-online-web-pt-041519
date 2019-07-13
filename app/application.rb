class Application

    def call(env)
        resp = Rack::Response.new

        t = Time.now

        if t.hour <= 12
            response = "Good Morning!"
        else 
            response = "Good Afternoon!"
        end



        resp.write response
        resp.finish
    end

end