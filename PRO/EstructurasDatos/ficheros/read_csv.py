# ********************
# LEYENDO FICHEROS CSV
# ********************
from pathlib import Path


def run(datafile: Path) -> list:
    
    data = []
    f = open(datafile)
    headers = (f.readline()).strip().split(",")
    for line in f:
        pokemon = {}
        info = line.strip().split(",")
        for index, i in enumerate(info):
            if i == 'True':
                pokemon[headers[index]]= bool(i)
            elif i == 'False':
                pokemon[headers[index]]= bool(0)
            elif not i.isalpha():
                pokemon[headers[index]]= int(i)
            elif i == " ":
                pokemon[headers[index]]= None
            else:
                pokemon[headers[index]]= i
        data.append(pokemon)

    return data


if __name__ == '__main__':
    run('data/read_csv/pokemon.csv')