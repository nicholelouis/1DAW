from concrete_factory import CarFactory, BikeFactory, TruckFactory
from creator import VehicleFactory

def client_code(factory: VehicleFactory):
    vehicle = factory.create_vehicle()
    print(f"Vehicle type: {vehicle.get_type()}")
    print(f"Vehicle speed: {vehicle.get_speed()}")

if __name__ == "__main__":
    print("App: Launched with CarFactory.")
    client_code(CarFactory())

    print("\nApp: Launched with BikeFactory.")
    client_code(BikeFactory())

    print("\nApp: Launched with TruckFactory.")
    client_code(TruckFactory())
