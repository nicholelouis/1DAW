from __future__ import annotations


class IntegerQueue:
    '''
    Cola de enteros:
    ╔══════╦═══╦═══╦═══╦═══╗
    ║ HEAD ║ 4 ║ 3 ║ 5 ║ 7 ║
    ╚══════╩═══╩═══╩═══╩═══╝
    '''

    def __init__(self, *, max_size: int = 10):
        self.max_size = max_size
        self.items = []


    def enqueue(self, item: int) -> bool:
        if len(self.items) == self.max_size:
            return False
        self.items.append(item)
        return True

    def dequeue(self) -> int:
        return self.items.pop(0)

    def head(self) -> int:
        return self.items[0]

    def is_empty(self) -> bool:
        return not len(self.items) == self.max_size

    def is_full(self) -> bool:
        return len(self.items) == self.max_size

    def expand(self, factor: int = 2) -> None:
        self.max_size *= factor

    def dump_to_file(self, path: str) -> None:
        with open(path, 'w') as f:
            f.write(','.join([str(item) for item in self.items]))

    @classmethod
    def load_from_file(cls, path: str) -> IntegerQueue:
        queue = IntegerQueue()
        with open(path) as f:
            items = (f.readline()).split(',')
        for item in items:
            if queue.is_full():
                queue.expand()
            queue.enqueue(int(item))
        return queue 

    def __getitem__(self, index: int) -> int:
        return self.items[index]

    def __setitem__(self, index: int, item: int) -> None:
        self.items[index] = item

    def __len__(self):
        return len(self.items)

    def __str__(self):
        return ','.join(str(item) for item in self.items)

    def __add__(self, other: IntegerQueue) -> IntegerQueue:
        iqueue = IntegerQueue(max_size= self.max_size + other.max_size)
        items = self.items + other.items
        for item in items:
            iqueue.enqueue(item)
        return iqueue

    def __iter__(self) -> IntegerQueueIterator:
        return IntegerQueueIterator(self)


class IntegerQueueIterator:
    def __init__(self, queue: IntegerQueue):
        self.queue = queue
        self.pointer = 0

    def __next__(self) -> int:
        if self.pointer >= len(self.queue.items):
            raise StopIteration
        item = self.queue.items[self.pointer]
        self.pointer += 1
        return item
