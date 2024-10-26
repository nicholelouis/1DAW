from __future__ import annotations


class IntegerStack:
    '''
    Pila de enteros:
    ╔═════╗
    ║ TOP ║
    ╠═════╣
    ║   4 ║
    ║   3 ║
    ║   5 ║
    ║   7 ║
    ╚═════╝
    '''

    def __init__(self, *, max_size: int = 10):
        self.max_size = max_size
        self.items = []

    def push(self, item: int) -> bool:
        if len(self.items) == self.max_size:
            return False
        self.items = [item] + self.items
        return True

    def pop(self) -> int:
        return self.items.pop(0)

    def top(self) -> int:
        return self.items[0]

    def is_empty(self) -> bool:
        return not self.items

    def is_full(self) -> bool:
        return len(self.items) == self.max_size

    def expand(self, factor: int = 2) -> None:
        self.max_size *= factor

    def dump_to_file(self, path: str) -> None:
        with open(path, 'w') as f:
            f.write('\n'.join([str(item) for item in self.items]))
            
    @classmethod
    def load_from_file(cls, path: str) -> IntegerStack:
        stack = IntegerStack()
        with open(path) as f:
            items = [line.strip() for line in f]
        for item in reversed(items):
            if stack.is_full():
                stack.expand()
            stack.push(int(item))
        return stack 

    def __getitem__(self, index: int) -> int:
        return self.items[index]

    def __setitem__(self, index: int, item: int) -> None:
        self.items[index] = item 

    def __len__(self):
        return len(self.items)

    def __str__(self):
        return '\n'.join([str(item) for item in self.items])

    def __add__(self, other: IntegerStack) -> IntegerStack:
        stack = IntegerStack(max_size= self.max_size + other.max_size)
        items = (other.items + self.items)
        for item in reversed(items):
            stack.push(item)
        return stack

    def __iter__(self) -> IntegerStackIterator:
        return IntegerStackIterator(self)


class IntegerStackIterator:
    def __init__(self, stack: IntegerStack):
        self.stack = stack
        self.pointer = 0

    def __next__(self) -> int:
        if self.pointer >= len(self.stack.items):
            raise StopIteration
        item = self.stack.items[self.pointer]
        self.pointer += 1
        return item
