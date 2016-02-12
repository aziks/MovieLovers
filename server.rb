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

  @peliculas = loadfilms.search_movies
  # @listaresultado = loadfilms.search_movies(titulo)
  # @peliculas = @listaresultado.movies
  erb(:show_films)
#binding.pry
end