require "bundler/setup"
require "sinatra"
require "httparty"
require "erubis"

REVISION = `git rev-parse HEAD`.chomp

set :erb, escape_html: true

helpers do
  def style_path
    "/style-#{REVISION}.css"
  end
end

get "/style-*.css" do
  scss :style
end

get "/" do
  erb :index
end
