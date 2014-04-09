# encoding: UTF-8

########~~MODULES~~###############
require_relative 'WordsController'
require 'colorize'
require 'win32console'
##################################

#COMMENTS:
=begin
	To get korean fonts to work in the console on windows 7 and up you 
	have to change the locale in the control panel and change it
	to korean and reboot and then the use the code page code of '65001'
	by 'chcp 65001'.
=end

loadHash = WordsController.new
wordsHash = loadHash.word_pairs

while true
	puts "*****************************************".yellow
	puts "      Welcome to Korean Word Buddy".red
	puts "*****************************************".yellow
	
	puts "press CTRL-C to exit the program...", "\n"
	
	puts "English Word: ".magenta
		input = gets.chomp.to_s.downcase.rstrip

	if wordsHash.include? (input) then
		word = wordsHash[input]
		puts "\n", "Korean Word: ".magenta, word.force_encoding("UTF-8").cyan
		puts "\n", "Press enter to search for another word..."
		gets()
		system("cls")

	elsif input == "" || nil then
		puts "\n", "You forgot to type in a word..."
		gets()
		system("cls")
	
	elsif wordsHash.include?(input) != wordsHash.key(wordsHash) then
		puts "\n", "That word isn\'t in our dictionary sorry about that..."
		gets()
		system("cls")

  
	end
end

	