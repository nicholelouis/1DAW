def get_in():
    while True:
        n = input('Give me an integer number: ')
        try:
            int(n)
        except ValueError:
            print('Not a valid integer. Try it again!')
get_in()