root_number = 0
current_number = 1
print(root_number)
print(current_number)
for _ in range (101):
    next_number = root_number + current_number
    root_number = current_number
    print(next_number)
    current_number = next_number
    
    

