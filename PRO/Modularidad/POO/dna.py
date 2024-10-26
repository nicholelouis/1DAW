from __future__ import annotations

def avg(item: int, len: int) -> float:
        return item * 100 / len

class DNA:
    ADENINE = 'A'
    CYTOSINE = 'C'
    GUANINE = 'G'
    THYMINE = 'T'

    def __init__(self, sequence: str):
        self.sequence = sequence

    def __str__(self):
        return self.sequence

    @property
    def adenines(self) -> int:
        return self.sequence.count(self.ADENINE)


    @property
    def cytosines(self) -> int:
        return self.sequence.count(self.CYTOSINE)

    @property
    def guanines(self) -> int:
        return self.sequence.count(self.GUANINE)

    @property
    def thymines(self) -> int:
        return self.sequence.count(self.THYMINE)

    def __eq__(self, other: DNA) -> bool:
        return len(self.sequence) == len(other.sequence)
    
    def __gt__(self, other: DNA) -> bool:
        return len(self.sequence) > len(other.sequence)
    
    def __lt__(self, other: DNA) -> bool:
        return len(self.sequence) < len(other.sequence)
        
    def __add__(self, other: DNA) -> DNA:
        if self == other:
            new_dna = ''.join((b if b > other.sequence[pos] else other.sequence[pos] for pos, b in enumerate(self.sequence)))
            return DNA(new_dna)
        
        min_dna = (min(other, self))
        max_dna = (max(other, self))
        min_length = len(min_dna)
        new_dna = ''.join((max_dna[i] if max_dna[i] > min_dna[i] else min_dna[i]) for i in range(min_length))
        return DNA(new_dna + max_dna[min_length:])

    def __len__(self):
        return len(self.sequence)

    def stats(self) -> dict[str, float]:
        length = len(self)
        avg_a = avg(self.adenines, length)
        avg_c = avg(self.cytosines,length)
        avg_g = avg(self.guanines, length)
        avg_t = avg(self.thymines, length)
        return {'A': avg_a, 'C': avg_c, 'G': avg_g, 'T': avg_t}

    def __mul__(self, other: DNA) -> DNA:
        if self == other:
            new_dna = ''.join((base for pos, base in enumerate(self.sequence) if base == other.sequence[pos]))
            return DNA(new_dna)
        
        min_dna = (min(other, self))
        max_dna = (max(other, self))
        min_length = len(min_dna)
        new_dna = ''.join((max_dna[i] for i in range(min_length) if max_dna[i] == min_dna[i]))
        return DNA(new_dna)

    @classmethod
    def build_from_file(cls, path: str) -> DNA:
        return DNA(''.join(line for line in open(path)))

    def dump_to_file(self, path: str) -> None:
        with open(path, 'w') as f:
            f.write(self.sequence)

    def __getitem__(self, index: int) -> str:
        return self.sequence[index]

    def __setitem__(self, index: int, base: str) -> None:
        dna = list(self.sequence)
        if base in ['A', 'G', 'C', 'T']:
            dna[index] = base
        else:
            dna[index] = self.ADENINE
        self.sequence = ''.join(dna)
