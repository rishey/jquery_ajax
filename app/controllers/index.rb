get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/colors' do
  puts params.inspect
  #Create and return a JSON object with the random cell and color given below.

  cell= rand(1..9)
  color= "#" + "%06x" % (rand * 0xffffff)
 if request.xhr?
    content_type :json
    { cell: @cell }.to_json
  else
  	erb :index
  end
 end