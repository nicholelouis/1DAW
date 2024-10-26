# *******************
# DE TEXTO A MARKDOWN
# *******************
import filecmp
from pathlib import Path


def run(text_path: Path) -> bool:
    md_path = 'data/txt2md/outline.md'
    with open(text_path) as inputpath:
        with open(md_path, "w") as outputpath:
            for line in inputpath:
                clean_line = line.lstrip()
                hashtags = '#' * (len(line)-len(clean_line)+1)
                outputpath.write(f'{hashtags} {clean_line}')



    return filecmp.cmp(md_path, 'data/txt2md/.expected', shallow=False)


if __name__ == '__main__':
    run('data/txt2md/outline.txt')