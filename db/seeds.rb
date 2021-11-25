# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Game.delete_all
#..
Game.create!(
	image: 'dishonored.jpg',
	title: 'Dishonored',
	description: 
	%{
		Dishonored is an immersive first-person action game that casts you as a supernatural assassin driven by revenge. 
		With Dishonored’s flexible combat system, creatively eliminate your targets as you combine the supernatural abilities, weapons and unusual gadgets at your disposal.
	},
	genre: 'Action',
	price: 260.0)
Game.create!(
	image: 'dishonored2.jpg',
	title: 'Dishonored 2',
	description: 
	%{
		Reprise your role as a supernatural assassin in Dishonored 2. 
		Declared a “masterpiece” by Eurogamer and hailed “a must-play revenge tale” by Game Informer, 
		Dishonored 2 is the follow up to Arkane’s 1st-person action blockbuster & winner of 100+ 'Game of the Year' awards, Dishonored.
	},
	genre: 'Action',
	price: 499.0)
Game.create!(
	image: 'dst.jpg',
	title: 'Don\'t Starve Together',
	description: 
	%{
		Fight, Farm, Build and Explore Together in the standalone multiplayer expansion to the uncompromising wilderness survival game, Don't Starve.
	},
	genre: 'Survival',
	price: 229.0)
Game.create!(
	image: 'painkiller.jpg',
	title: 'Painkiller: Black Edition',
	description: 
	%{
		Painkiller Black Edition includes the expansion pack Battle Out of Hell, featuring 10 additional single-player levels and many new villains.
	},
	genre: 'Action',
	price: 169.0)
#..