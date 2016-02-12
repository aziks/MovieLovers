require 'sinatra'
require 'sinatra/reloader'

require_relative 'lib/movieslistquiz.rb'
require_relative 'lib/movies.rb'

loadfilms = MovieList.new

get "/" do
  erb(:home)
end

post "/movieslist" do
  titulo = params[:titulo]
  @listaresultado = loadfilms.search_movies(titulo)
  ereb(:show_films)
end