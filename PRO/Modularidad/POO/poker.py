from __future__ import annotations

def load_card_glyphs(path: str = 'cards.dat') -> dict[str, str]:
    card_glyphs = {}
    with open (path) as f:
        for line in f:
            suit, glyphs = line.split(':')
            card_glyphs[suit] = glyphs.strip().replace(',','')
    return card_glyphs

class Card:
    CLUBS = '♣'
    DIAMONDS = '◆'
    HEARTS = '❤'
    SPADES = '♠'
    #           1,   2,   3,   4,   5,   6,   7,   8,   9,   10,  11,  12,  13
    SYMBOLS = ('A', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K')
    A_VALUE = 1
    K_VALUE = 13
    GLYPHS = load_card_glyphs()

    def __init__(self, value: int | str, suit: str):
        if suit not in self.GLYPHS:
            raise InvalidCardError(f'🃏 Invalid card: {repr(suit)} is not a supported suit')
        try:
            if isinstance(value, int) and value < 1 or value > 13:
                raise InvalidCardError(f'🃏 Invalid card: {repr(value)} is not a supported value')
        except TypeError:
            if isinstance(value, str) and value not in self.SYMBOLS:
                raise InvalidCardError(f'🃏 Invalid card: {repr(value)} is not a supported symbol')

        self.suit = suit
        self.value = value if isinstance(value, int) else self.GLYPHS.index(value) + 1
      
    @property
    def cmp_value(self) -> int:
        if self.is_ace():
            return self.K_VALUE + 1 
        return self.value

    def __repr__(self):
        return self.GLYPHS[self.suit][self.value -1]

    def __eq__(self, other: Card | object):
        return self.value == other.value and self.suit == other.suit

    def __lt__(self, other: Card):
        if self.suit != other.suit:
            return self.suit < other.suit
        return self.value < other.value

    def __gt__(self, other: Card):
        if self.suit != other.suit:
            return self.suit > other.suit
        return self.value > other.value

    def __add__(self, other: Card) -> Card:
        suit = self.suit if self.cmp_value > other.cmp_value else other.suit
        sum_values =  self.cmp_value + other.cmp_value
        value = sum_values if sum_values <= self.K_VALUE else self.A_VALUE
        return Card(value = value, suit= suit)

    def is_ace(self) -> bool:
        return self.value == 1

    @classmethod
    def get_available_suits(cls) -> str:
        return ''.join(cls.GLYPHS.keys())

    @classmethod
    def get_cards_by_suit(cls, suit: str):
        return cls.GLYPHS[suit]


class InvalidCardError(Exception):
    def __init__(self, message = '🃏 Invalid card'):
            err_info = f'{message}'
            super().__init__(err_info)
