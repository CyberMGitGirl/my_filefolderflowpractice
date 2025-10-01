// Abstract class
abstract class Vehicle {
  String brand;
  int speed;

  Vehicle(this.brand, this.speed);

  void move(); // abstract method
}

// Mixin for electric vehicles
mixin Electric {
  void chargeBattery() {
    print("Charging battery...");
  }
}

// Mixin for fuel-powered vehicles
mixin FuelPowered {
  void refuel() {
    print("Refueling...");
  }
}

// Car class
class Car extends Vehicle with FuelPowered {
  Car(String brand, int speed) : super(brand, speed);

  @override
  void move() {
    print("The car '$brand' is moving at $speed km/h.");
  }
}

// Bike class
class Bike extends Vehicle {
  Bike(String brand, int speed) : super(brand, speed);

  @override
  void move() {
    print("The bike '$brand' is cycling at $speed km/h.");
  }
}

// Electric Scooter class
class ElectricScooter extends Vehicle with Electric {
  ElectricScooter(String brand, int speed) : super(brand, speed);

  @override
  void move() {
    print("The electric scooter '$brand' is gliding at $speed km/h.");
  }
}

// Main function
void main() {
  List<Vehicle> vehicles = [
    Car("Toyota", 120),
    Bike("Giant", 25),
    ElectricScooter("Xiaomi", 30),
    Car("Ford", 140),
    ElectricScooter("Segway", 35),
  ];

  for (var vehicle in vehicles) {
    vehicle.move();

    // Optional: check for mixins at runtime
    if (vehicle is Electric) {
      vehicle.chargeBattery();
    }
    if (vehicle is FuelPowered) {
      vehicle.refuel();
    }

    print(""); // Just for spacing
  }
}
