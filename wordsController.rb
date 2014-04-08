# encoding: UTF-8

class WordsController
	def word_pairs
		@word_hash 
		{
			"hello" => "안녕하세요",
			"korea" => "한국",
			"man" => "남자",
			"woman" => "여자",
			"love" => "사랑",
			"city" => "도시",
			"name" => "도시",
			
			#furniture:
			"chair" => "의자",
			"table" => "탁자",
			"sofa" => "소파"
		}
	
	end
	
	def wordPairCount()
		return word_hash.length
	end
	
end