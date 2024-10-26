def verify_credentials(user, passwd, xuser, other_passwd):
    if user == xuser and passwd == other_passwd:
        return True
    else:
        return False