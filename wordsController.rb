# encoding: UTF-8

class WordsController
	
	#Reads in the 'kwords.dat' file into a ruby hash:
	@@words_hash = Hash.new
	File.open('kwords.dat').each do |line|
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
