require 'sinatra'

get ('/') do
  'hello world'
end

get ('/secret') do
  "you're handsome"
end

get ('/truth') do
  'cold beans ain\'t hot'
end

# get('/random-cat') do
#   name = ["Mittens", "Trixie", "Fluffball", "Noah"]
#   erb(:index) {name.sample}
# end

post('/named-cat') do
  p params
  name = params[:name]
  erb(:index) {name}
end

get ('/cat-form') do
  erb (:cat_form)
end
