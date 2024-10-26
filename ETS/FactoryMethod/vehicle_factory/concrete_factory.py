from product import Vehicle
from creator import VehicleFactory
from product import Vehicle

class Car(Vehicle):
    def get_type(self):
        return "Car"

    def get_speed(self):
        return "120 km/h"

class Bike(Vehicle):
    def get_type(self):
        return "Bike"

    def get_speed(self):
        return "80 km/h"

class Truck(Vehicle):
    def get_type(self):
        return "Truck"

    def get_speed(self):
        return "100 km/h"

class CarFactory(VehicleFactory):
    def create_vehicle(self) -> Vehicle:
        return Car()

class BikeFactory(VehicleFactory):
    def create_vehicle(self) -> Vehicle:
        return Bike()

class TruckFactory(VehicleFactory):
    def create_vehicle(self) -> Vehicle:
        return Truck()
