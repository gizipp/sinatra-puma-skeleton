require 'sinatra'
require 'mechanize'
require 'json'
require 'faraday'

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

  page.links.each do |link|
    url = link.resolved_uri rescue nil
    puts "checking #{url}"
    res = Faraday.get(url) if url

    links << {
      anchor: link.text,
      url: url,
      status: res.status
    } unless url.nil?
  end

  { links: links }.to_json
end
