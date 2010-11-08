# sinatra commands

get '/' do
  erb :welcome
end

get '/auth/twitter/callback' do
  @auth_hash = request.env['omniauth.auth']
  "#{@auth_hash.to_s} <br /> success!"
end