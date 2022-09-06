class App 
    def call(env)
        headers = { 'Content-Type' => 'text/json' }
        return [200, headers, ['favicon']] if env['PATH_INFO'] == '/favicon.ico'
        response = Rack::Response.new("Basic Ruby MVC App", 200, headers)
        [response.status, response.headers, response.body]
    end
end 