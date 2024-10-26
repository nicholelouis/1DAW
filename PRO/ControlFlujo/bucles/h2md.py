# ****************************
# CONVIRTIENDO HTML A MARKDOWN
# ****************************


def run(html: str) -> str:
    intex1 = html.find(">")
    index2 = html.find("</")
    hash_num = int(html[2]) * "#"
    markdown = f"{hash_num} {html[1+intex1:index2]}"

    return markdown


if __name__ == '__main__':
    run('<h1>Core</h1>')