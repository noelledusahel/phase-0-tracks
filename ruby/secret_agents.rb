def encrypt(str)
    i = 0 
    str2 = ""
   while i < str.length
       str2[i] = str[i].next
        i += 1
   end
    
   puts str2
end    

# encrypt("cdefg")
# encrypt("swordfish")

def decrypt(str)
    i = 0 
    str2 = ""
   while i < str.length
        # if str[i] == 'a'
        #     str[i] = [123].pack('U')
        # else    
           str2[i] = (str[i].ord - 1).chr
            i += 1
          
   end
    
    puts str2
end    

puts "would you like to decrypt or encrypt a password choose between (d/e)"
choice = gets.chomp
puts "what is your password ?"
password = gets.chomp
if choice == "e"
	encrypt(password)
elsif choice == "d"
	decrypt(password)
else 
	puts "Please choose 'd' or 'e'"
end



# encrypt("abc")
# encrypt("zed")
# decrypt("bcd")
# decrypt("afe")

# decrypt("swordfish")

# def encrypt(str)
# i = 0 
# str2 = ""
# 	while i < str.length
# 		str2[i] = str[i].next
# 		i = i + 1
# 	end 
# puts str2
# end 	


# encrypt("abc")
# encrypt("zed")

# def decrypt(str)
# i = 0
# str2 = ""
# 	while i < str.length
# 		if str[i]=="a"
# 			str[i]=""
# 		else 
# 		str2[i] = (str[i].ord - 1).chr
# 		i = i + 1
# 		end
# 	end
# puts str2
# end


# decrypt("bcd")
# decrypt("afe")