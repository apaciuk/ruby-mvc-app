require 'rack'
require_relative 'app'

use Rack::Reloader, 0 

use Rack::Static, :urls => ["/images"], :root => "public"
run App.new