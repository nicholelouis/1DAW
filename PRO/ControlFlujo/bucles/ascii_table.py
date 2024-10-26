for i in range (33, 128):
    char = chr(i)
    if i < 100:
        print(f"0{i} {char}")
    else:
        print(f"{i} {char}")
    print("")