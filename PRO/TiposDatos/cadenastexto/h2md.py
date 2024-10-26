# ****************************
# CONVIRTIENDO HTML A MARKDOWN
# ****************************


def run(html: str) -> str:
    index1 = html.find(">") + 1
    index2 = html.find("<", 2)
    hash_sign = int(html[2]) * "#"
    markdown = hash_sign + " " + html[index1:index2]

    return markdown


if __name__ == '__main__':
    run('<h1>Core</h1>')