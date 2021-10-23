require 'sinatra'
require 'mechanize'
require 'json'


before do
  content_type :json
end

get '/' do
  'Hello world'
end

post '/check' do
  agent = Mechanize.new
  page  = agent.get(params[:url])
  links = []

  page.links.compact.each do |link|
    puts link.href
    links << link.href
  end

  { links: links }.to_json
end
