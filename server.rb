require 'sinatra'
require 'sinatra/reloader'
require 'pry'

require_relative 'lib/movielistquiz.rb'

loadfilms = MovieList.new

get "/" do
  erb(:home)
end

post "/movieslist" do
  titulo = params[:titulo]

  loadfilms.search_movies(titulo)

  @pelis_poster = loadfilms.nueve_peliculas_con_poster

  erb(:show_films)
#binding.pry
end