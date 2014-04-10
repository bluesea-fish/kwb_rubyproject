# encoding: UTF-8
# using Ruby 1.9.3p

########~~MODULES~~###############
require_relative 'WordsController'
require 'colorize'
require 'win32console' # disable if you are on a unix type OS.
##################################

##################~~~~~~~COMMENTS~~~~~####################################
=begin
	To get korean fonts to work in the console on windows 7 and up you 
	have to change the locale in the control panel and change it
	to korean and reboot and then the use the code page code of '65001'
	by 'chcp 65001'.
=end
#########################################################################


loadHash = WordsController.new
wordsHash = loadHash.wordPairs

while true
	puts "*****************************************".yellow
	puts "      Welcome to Korean Word Buddy".red
	puts "*****************************************".yellow
	
	puts "Press CTRL-C to exit the program...", "\n"
	puts "Press 1 for word search..."
	puts "Press 2 for options...", "\n"
	@get_select_options = gets.chomp
	
	
	while @get_select_options.to_i == 1
		system("cls")
		puts "*****************************************".yellow
		puts "      Welcome to Korean Word Buddy".red
		puts "*****************************************".yellow
		puts "English Word: ".magenta
			input = gets.chomp.to_s.downcase.rstrip
		
		if wordsHash.include? (input) then
			word = wordsHash[input]
			puts "\n", "Korean Word: ".magenta, word.cyan
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

	while @get_select_options.to_i == 2 
		system("cls")
		puts "*****************************************".yellow
		puts "      Welcome to Korean Word Buddy".red
		puts "*****************************************".yellow
		puts "     **************************".yellow
		puts "          Settings/Options	".red
		puts "     **************************".yellow
		
		puts "1. Dictionary Word Count: type 'show word count' ", "\n"
		puts "2. Application Version: type 'version'"
		
		@inputcount = gets.chomp
		if @inputcount.to_s == "show word count" then
			wordcount = loadHash.totalWordCount
			puts "\n", "#{wordcount} words are currently in the dictionary."
			gets()
			system("cls")
		end
		
		if @inputcount.to_s == "version" then
			puts "\n", "Current Version of Korean Word Buddy is: 0.1a"
			gets()
			system("cls")
		end
	end
end

	