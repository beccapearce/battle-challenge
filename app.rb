require 'sinatra'

get ('/') do
  'hello world'
end

get ('/secret') do
  "you're handsome"
end

get ('/truth') do
  'cold potatoes ain\'t hot'
end

get('/cat') do
  "<style>
  img{
    border: dashed;
    border-color: red;
  }
  </style>
    <img src='http://bit.ly/1eze8aE'>"
end
