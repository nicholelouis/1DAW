from abc import ABC, abstractmethod
from product import Vehicle

class VehicleFactory(ABC):
    @abstractmethod
    def create_vehicle(self) -> Vehicle:
        pass
