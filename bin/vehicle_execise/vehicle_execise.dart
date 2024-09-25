import 'vehicle_model.dart';

List<VehicleModel> vehicles = [
  VehicleModel(name: "Audi A3", type: "SUV", year: 2010, price: 10000),
  VehicleModel(name: "BMW 3", type: "SUV", year: 2015, price: 15000),
  VehicleModel(name: "Mercedes C", type: "SUV", year: 2018, price: 20000),
  VehicleModel(name: "VW Golf", type: "SUV", year: 2019, price: 25000),
  VehicleModel(name: "Audi A6", type: "SUV", year: 2020, price: 30000),
  VehicleModel(name: "Wiesmann", type: "Sport", year: 2018, price: 200000),
];

/// Gibt die Namen aller Fahrzeuge zurück
List<String> getVehicleNames() => vehicles.map((e) => e.name).toList();

/// Gibt die Typen aller Fahrzeuge zurück
List<String> getVehicleTypes() => vehicles.map((e) => e.type).toList();

/// Gibt die Preise aller Fahrzeuge zurück
List<double> getVehiclePrices() => vehicles.map((e) => e.price).toList();

/// Gibt die Baujahre aller Fahrzeuge zurück
List<int> getVehicleYears() => vehicles.map((e) => e.year).toList();

/// Gibt alle Fahrzeuge zurück, die teurer als 20000 sind
List<VehicleModel> getVehiclesMoreExpensiveThan20000() =>
    vehicles.where((vehicle) => vehicle.price > 20000).toList();

/// Gibt alle Fahrzeuge zurück, die älter als 2015 sind
List<VehicleModel> getVehiclesOlderThan2015() =>
    vehicles.where((vehicle) => vehicle.year < 2015).toList();

/// Gibt alle Fahrzeuge zurück, die jünger als 2015 sind
List<VehicleModel> getVehiclesYoungerThan2015() =>
    vehicles.where((vehicle) => vehicle.year > 2015).toList();

/// Gibt alle Fahrzeuge vom Typ "SUV" zurück
List<VehicleModel> getVehiclesOfTypeSUV() =>
    vehicles.where((vehicle) => vehicle.type == "SUV").toList();

void main() {
  print(getVehicleNames());
  print(getVehicleTypes());
  print(getVehiclePrices());
  print(getVehicleYears());
  print(getVehiclesMoreExpensiveThan20000());
  print(getVehiclesOlderThan2015());
  print(getVehiclesYoungerThan2015());
  print(getVehiclesOfTypeSUV());
}
