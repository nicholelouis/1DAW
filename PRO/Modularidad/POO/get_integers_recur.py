def get_in():
    n = input('Give me an integer number: ')
    try:
        int(n)
    except ValueError:
        print('Not a valid integer. Try it again!')
        return get_in()
    else:
        return n
get_in()