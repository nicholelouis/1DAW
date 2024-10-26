target_x = 7
target_y = 8
num_x = 0
num_y = 0
print(num_x, num_y)

swicht = True
while num_x <= target_x and num_y <= target_y:
    if swicht:
        num_x +=2
        num_y +=1
        swicht = not swicht
    else:
        num_x += 1
        num_y += 2
        swicht = not swicht
    print(num_x, num_y)      