entrada_x = 7
entrada_y = 8
numx = 0
numy = 0
print(f"({numx},{numy})", end=" ")
flow = True
while numx != entrada_x and numy != entrada_y:
    if flow:
        numx += 1
        numy += 2
    else:
        numx += 2
        numy += 1
    print(f"({numx},{numy})", end=" ")
    flow = not flow
