# encoding: UTF-8
########~~MODULES~~###############
require_relative 'WordsController'
require 'colorize'
require 'win32console'
##################################

loadHash = WordsController.new
wordsHash = loadHash.word_pairs


while true
	puts "*****************************************".yellow
	puts "      Welcome to Korean Word Buddy".red
	puts "*****************************************".yellow
	
	puts "press CTRL-C to exit the program...", "\n"
	
	puts "English Word: ".magenta
		input = gets.chomp.to_s.downcase

	if wordsHash.include? (input) then
		word = wordsHash[input]
		puts "\n", "Korean Word: ".magenta, word.force_encoding("UTF-8").cyan
		puts "\n", "Press enter to search another word..."
		gets()
		system("cls")

	elsif input == "" || nil then
		puts "\n", "You forgot to type a word..."
		gets()
		system("cls")
	
	elsif wordsHash.include?(input) != wordsHash.key(input) then
		puts "That word isn\'t in our dictionary sorry about that..."
		gets()
		system("cls")

  
	end
end

	