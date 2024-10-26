short_date = '24/06/1984'
matraca = int(''.join(short_date.split('/')[::-1]))

m1 = '01/03/1979'
matraca2 = int(''.join(m1.split('/')[::-1]))
print(matraca - matraca2)
