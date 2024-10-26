suits = ['♠', '♣', '◆', '❤']
letters = ['J', 'Q', 'K', 'A']

def generate():
    deck = []
    for suit in suits:
        for num in range(2, 11):
            deck.append(str(num) + suit)
        for n in range(4):
            deck.append(letters[n] + suit)
    return deck
print(generate())

deck = ['2♠', '3♠', '4♠', '5♠']
print([deck.pop(0) for _ in range(3)], deck)

def test_add_stacks(stack3: IntegerStack, stack4: IntegerStack):
    stack = stack3 + stack4
    assert stack.max_size == 7
    assert stack.items == [50, 500, 5000, 50_000, 10, 100, 1000]

@pytest.fixture
def stack3():
    s = IntegerStack(max_size=3)
    s.items = [10, 100, 1000]
    return s


@pytest.fixture
def stack4():
    s = IntegerStack(max_size=4)
    s.items = [50, 500, 5000, 50_000]
    return s


'''
s.items = [50, 500, 5000, 50_000]
s.items = [10, 100, 1000]
[50, 500, 5000, 50_000, 10, 100, 1000]
'''

self.suit = suit if suit in self.GLYPHS else InvalidCardError(suit, f'🃏 Invalid card: {repr(suit)} is not a supported suit')
self.value = value if value in self.SYMBOLS else InvalidCardError(value, f'🃏 Invalid card: {repr(value)} is not a supported value')


    def get_delta_days(self) -> int:
        '''Número de días transcurridos desde el 1-1-1900 hasta la fecha'''
        days = 0
        for m in range (1, self.month):
            days += Date.days_in_month(m, self.year)

        total_years = self.year - 1900
        for n in range (total_years):
            year = self.year - n
            if Date.is_leap_year(year):
                days += 366
            else:
                days += 365
        return days

    @property
    def weekday(self) -> int:
        '''Día de la semana de la fecha (0 para domingo, ..., 6 para sábado).'''
        total_days = Date.get_delta_days(self)
        if total_days % 7 + 1 == 6:
            return 0
        return total_days % 7 + 1

class Fibonacci:
    def __init__(self, target: int):
        self.target = target
        self.pointer = 0
        self.a = 0
        self.b = 1
        
    def fibonacci_calc(self):    
        result = self.a
        self.a, self.b = self.b, self.a + self.b
        return result

    def __iter__(self):
        return self
    
    def __next__(self):
        if self.pointer >= self.target:
            raise StopIteration
        f = Fibonacci.fibonacci_calc(self)
        self.pointer += 1
        return f

def run(n):
   return list(Fibonacci(n))