str1 = "0001010011101"
str2 = "0000110010001"
acc = 0
for i in range (len(str1)):
   if str1[i] != str2[i]:
    acc += 1
            
print(acc)



