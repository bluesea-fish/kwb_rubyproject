# encoding: UTF-8

########~~MODULES~~###############
require_relative 'wordsController'
require 'colorize'
require 'readline'
require 'os'
require 'win32console' # disable if you are on a unix type OS/ or enable if your on Windows.
##################################

##################~~~~~~~COMMENTS~~~~~####################################
=begin
	To get korean fonts to work in the console on windows 7 and up you 
	have to change the locale in the control panel and change it
	to korea and reboot and then the use the code page code of '65001'
	by the command 'chcp 65001'.
=end
#########################################################################

def clear_screen
	if OS.windows? then
		system("cls")
	elsif OS.posix? then
		system("clear")	
	end
end

loadHash = WordsController.new
wordsHash = loadHash.wordPairs


while true
	clear_screen
	puts "*****************************************".yellow
	puts "      Welcome to Korean Word Buddy".red
	puts "*****************************************".yellow
	
	puts "Type -1 to exit the program...", "\n"
	puts "Press 1 for word search..."
	puts "Press 2 for options...", "\n"
	@get_select_options = gets.chomp
	
	if @get_select_options.to_i == -1 then
		clear_screen
		break
	elsif
		while @get_select_options.to_i == 1
			clear_screen
			puts "*****************************************".yellow
			puts "      Welcome to Korean Word Buddy".red
			puts "*****************************************".yellow
			puts "     **************************".yellow
			puts "            Word Search	".light_blue
			puts "     **************************".yellow
			puts "English Word: ".light_magenta.underline
				input = gets.chomp.to_s.downcase.rstrip
		
			if input == "--back" then
				break

			elsif wordsHash.include? (input) then
				word = wordsHash[input]
				puts "\n", "Korean Word: ".light_magenta.underline, word.light_cyan
				puts "\n", "Press enter to search for another word..."
				gets()
				clear_screen

			elsif input == "" || nil then
				puts "\n", "You forgot to type in a word..."
				gets()
				system("clear")
	
			elsif wordsHash.include?(input) != wordsHash.key(wordsHash) then
				puts "\n", "That word isn\'t in our dictionary sorry about that..."
				gets()
				clear_screen
		
			end
		end

	elsif
		while @get_select_options.to_i == 2 
			clear_screen
			puts "*****************************************".yellow
			puts "      Welcome to Korean Word Buddy".red
			puts "*****************************************".yellow
			puts "     **************************".yellow
			puts "          Settings/Options	".light_blue
			puts "     **************************".yellow
		
			puts "1. Dictionary Word Count: type 'show word count' ", "\n"
			puts "2. Application Version: type 'version'", "\n" 
			puts "3. To see a list of words in the dictionary type: 'show words'"
		
			@inputcount = gets.chomp
		
			if @inputcount == "--back" then
				break

			elsif @inputcount.to_s == "show word count" then
				wordcount = loadHash.totalWordCount
				puts "\n", "#{wordcount} words are currently in the dictionary."
				gets()
				clear_screen
		
		
			elsif @inputcount.to_s == "version" then
				app_version = "0.1a"
				puts "\n", "Current Version of Korean Word Buddy is: #{app_version}"
				gets()
				clear_screen
			
			elsif @inputcount.to_s == "show words" then
				puts "\n"
				puts "Enlgish Words in Dicitonary: ".underline
				engKeys = wordsHash.keys
				engKeys.each do |eword|
					puts eword
					gets()
				end
			end
		end
	end

end

	
