# encoding: UTF-8

class WordsController
	
	#Reads in the 'kwords.dat' file into a ruby hash:
	@@words_hash = Hash.new
	#this makes sure that the file is in the same directory:
	Dir.chdir(File.dirname(__FILE__))
	File.open('kwords.dat', 'r').each do |line|
		eng_word, kor_word = line.split(/,/)
		@@words_hash[eng_word] = kor_word
	end


	def wordPairs
		return @@words_hash	
	end	
	
	def totalWordCount
		return @@words_hash.length
	end

	
end
