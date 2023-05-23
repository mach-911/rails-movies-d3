require 'json'

path = 'db/fixtures/movies.json'
file = File.read(path)

data = JSON.parse(file)

if Pelicula.count > 0
	puts "Ya hay registros"
else
	Pelicula.create(data["peliculas"])
end

if Documental.count > 0
	puts "Ya hay registros"
else
	Documental.create(data["documentales"])
end

if Estreno.count > 0
	puts "Ya hay registros"
else
	Estreno.create(data["estrenos"])
end
