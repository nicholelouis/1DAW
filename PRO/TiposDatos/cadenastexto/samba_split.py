# ***********************
# SEPARANDO RECURSO SAMBA
# ***********************


def run(smb_path: str) -> tuple:
    
    clean_path = (smb_path.lstrip("//"))
    index_division = clean_path.find("/")

    host = clean_path[:index_division]
    path = clean_path[index_division:]


    return host, path 


if __name__ == '__main__':
    run('//1.1.1.1/aprende/python')