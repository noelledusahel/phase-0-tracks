def capitolator
	puts "Lets learn some state capitols!"
	capitol1 = "Sacramento"
	capitol2 = "Tallahassee"
	yield(capitol1, capitol2)
end 

capitolator { |capitol1, capitol2| puts "The capitol of California is #{capitol1}. 
The capitol of Florida is #{capitol2}" }