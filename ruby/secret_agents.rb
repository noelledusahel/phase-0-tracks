def encrypt(str)
i = 0 
str2 = ""
	while i < str.length
		str2[i] = str[i].next
		i = i + 1
	end 
puts str2
end 	


encrypt("abc")
encrypt("zed")

def decrypt(str)
i = 0
str2 = ""
	while i < str.length
		if str[i]=="a"
			str[i]=""
		else 
		str2[i] = (str[i].ord - 1).chr
		i = i + 1
		end
	end
puts str2
end


decrypt("bcd")
decrypt("afe")