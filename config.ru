require 'sinatra'

get '/' do
  send_file File.join('public', 'index.html')
end

get '/moo' do
  headers "Content-Type" => "text/plain; charset=utf8"
  <<BUNNY
   (\\__/)
   (=''=)
  (")__(")
Moo! Im a cow!
BUNNY
end

run Sinatra::Application
