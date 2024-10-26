from abc import ABC, abstractmethod

class Vehicle(ABC):
    @abstractmethod
    def get_type(self):
        pass

    @abstractmethod
    def get_speed(self):
        pass
