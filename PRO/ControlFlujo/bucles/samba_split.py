# ***********************
# SEPARANDO RECURSO SAMBA
# ***********************


def run(smb_path: str) -> tuple:
    fixed_path = smb_path.lstrip("//")
    index_split = fixed_path.find("/")
    host = fixed_path[:index_split]
    path = fixed_path[index_split:]

    return host, path


if __name__ == '__main__':
    run('//1.1.1.1/aprende/python')