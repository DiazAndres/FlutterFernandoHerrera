void main() {
  final windPlant = WindPlant(initialEnergy: 100);
  final nuclearPlant = NuclearPlant(energyLeft: 1000);
  print('Wind: ${chargePhone(windPlant)}');
  print('Nuclear: ${chargePhone(nuclearPlant)}');
}

double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) {
    throw Exception('Not enough energy');
  }
  return plant.energyLeft - 10;
}

enum PlantType {
  nuclear,
  wind,
  water,
}

abstract class EnergyPlant {
  double energyLeft;
  final PlantType type; //nuclear, wind, water

  EnergyPlant({
    required this.energyLeft,
    required this.type,
  });

  //se crean los métodos pero no se implementan
  void consumeEnergy(double amount);
}

//extends o implements
//Extends hace uso de la herencia, hereda toda la clase padre
class WindPlant extends EnergyPlant {
  WindPlant({required initialEnergy})
      : super(energyLeft: initialEnergy, type: PlantType.wind);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}

//Implements, para algo en específico, para implementar solo un método
class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;

  @override
  final PlantType type = PlantType.nuclear;

  NuclearPlant({required this.energyLeft});

  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.05);
  }
}
