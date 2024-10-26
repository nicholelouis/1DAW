# **************
# NÚMEROS PRIMOS
# **************


def run(n: int) -> bool:
    isprime = True
    while True:
        for i in range (2, n // 2):
            if n % i != 0:
                isprime = False
              
    


if __name__ == '__main__':
    run(2)