# encoding: UTF-8

class WordsController
	@@word_hash  = 
		{
			"hello" => "안녕하세요",
			"korea" => "한국",
			"man" => "남자",
			"woman" => "여자",
			"love" => "사랑",
			"city" => "도시",
			"name" => "도시",
			
			#Colors:
			"black" => "검정색",
			"red" => "빨강색",
			"blue" => "파랑색",
			"grey" => "회색",
			"green" => "녹색",
			"white" => "흰색",
			"yellow" => "노랑색",
			"purple" => "보라색",
			"orange" => "주황색",
			"pink" => "분홍색",
			
			#furniture:
			"chair" => "의자",
			"table" => "탁자",
			"sofa" => "소파",
			"house" => "집",
			"door" => "문",
			"bed" => "침대",
			
			#Planets/Space:
			"saturn" => "토성",
			"jupiter" => "목성",
			"planet" => "행성",
			"venus" => "금성",
			"earth" => "지구",
			"mars" => "화성",
			"uranus" => "천왕성",
			"pluto" => "명왕성",
			"shooting star" => "유성",
			
			#Body/Medical/illnesses:
			"arm" => "팔",
			"eye" => "눈",
			"head" => "머리",
			"nose" => "코",
			"mouth" => "입",
			"leg" => "다리",
			"finger" => "손가락",
			"ear" => "귀",
			"ankle" => "",
			"thumb" => "엄지",
			"knee" => "무릎",
			"stomach" => "배",
			"hospital" => "병원",
			"nostril" => "콧구멍",
			"palm" => "손바닥",
			"blood" => "피",
			"lungs" => "폐",
			"abdomen" => "배",
			"heart" => "심장",
			"pulse" => "맥박",
			"medication" => "약",
			"syringe" => "주사기",
			"liver" => "간",
			"ambulance" => "구급차",
			"blister" => "물집",
			"anesthesia" => "마취",
			"pharmacy" => "약국",
			"nurse" => "간호사",
			"butt" => "엉덩이",
			"blind" => "맹인",
			"deaf" => "귀머거리",
			"brain" => "뇌",
			"urine" => "오줌",
			"weight" => "중량",
			"armpit" => "겨드랑이",
			"epidemic" => "유행성",
			"childbirth" => "출산",
			"childcare" => "보육",
			
			
			#Science/life/chemicals:
			"carbon" => "탄소",
			"oxygen" => "산소",
			"helium" => "헬륨",
			"zinc" => "아연",
			"iron" => "철",
			"ammonia" => "암모니아",
			"water" => "물",
			"chemical" => "화학",
			"lab" => "실험실",
			"biology" => "생물학",
			
			#Cooking/Food/Beverage:
			"beer" => "맥주",
			"wine" => "와인",
			"eel" => "장어",
			"sausage" => "소시지",
			"pot" => "냄비",
			"cookie" => "쿠키",
		}

	def wordPairs
		return @@word_hash
	end	
	
	def totalWordCount
		return @@word_hash.length
	end
end