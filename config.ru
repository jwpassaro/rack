$:.unshift 'lib'
require 'slim'
require 'application_controller'
require 'about_controller'
require 'home_controller'
require 'bios_controller'
require 'router'
require 'application'
require 'messages_controller'
require 'time'

use Rack::Session::Cookie, secret: 'secret'
run Application.new

#run Proc.new { |env| ['200', {'Content-Type' => 'text/html'}, ['Goodbye']] }
