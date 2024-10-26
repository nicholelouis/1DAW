# ******************
# LA PALABRA PERDIDA
# ******************


def run(text: str, target_word: str, replace_word: str) -> str:
  
    word_index = text.find(target_word)
    text_part1 = text[:word_index:]
    
    word_final_index = word_index + len(target_word)
    text_part2 = text[word_final_index:]
   
    mtext = text_part1 + replace_word + text_part2

    return mtext


if __name__ == '__main__':
    run('This is a beautiful night on the Atlantic', 'beautiful', 'terrible')