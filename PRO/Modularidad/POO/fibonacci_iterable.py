# ******************
# FIBONACCI ITERABLE
# ******************

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