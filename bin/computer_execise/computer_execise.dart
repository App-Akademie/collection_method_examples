import 'computer_model.dart';

List<ComputerModel> computerModels = [
  ComputerModel(
      computerName: "MacBook-Pro-2023",
      computerType: "Mac",
      computerPrice: 4000,
      isComputerNew: true),
  ComputerModel(
      computerName: "Random-Computer-2020",
      computerType: "Windows",
      computerPrice: 1500,
      isComputerNew: false),
  ComputerModel(
      computerName: "MacBook-Pro-2021",
      computerType: "Mac",
      computerPrice: 2000,
      isComputerNew: false),
  ComputerModel(
      computerName: "Windows-Laptop",
      computerType: "Windows",
      computerPrice: 500,
      isComputerNew: true),
  ComputerModel(
      computerName: "MacBook-Pro-2023",
      computerType: "Windows",
      computerPrice: 4000,
      isComputerNew: true),
];

/// Gibt die Namen aller Computer zurück
List<String> getComputerNames() =>
    computerModels.map((e) => e.computerName).toList();

/// Gibt die Typen aller Computer zurück
List<String> getComputerTypes() =>
    computerModels.map((e) => e.computerType).toList();

/// Gibt die Preise aller Computer zurück
List<int> getComputerPrices() =>
    computerModels.map((e) => e.computerPrice).toList();

/// Gibt den Status aller Computer zurück, ob sie neu sind oder nicht
List<bool> getComputerNewStatus() =>
    computerModels.map((e) => e.isComputerNew).toList();

/// Gibt die Namen der Computer zurück, die teurer als 2000 sind
List<String> getComputerNamesMoreExpensiveThan2000() => computerModels
    .where((computer) => computer.computerPrice > 2000)
    .map((computer) => computer.computerName)
    .toList();

/// Gibt die vollständigen Namen der neuen Computer zurück
List<String> getFullNamesOfNewComputers() => computerModels
    .where((computer) => computer.isComputerNew)
    .map((computer) => "${computer.computerName} ${computer.computerType}")
    .toList();

/// Gibt die Preise der neuen Computer zurück
List<int> getPricesOfNewComputers() => computerModels
    .where((computer) => computer.isComputerNew)
    .map((computer) => computer.computerPrice)
    .toList();

void main() {
  print(getComputerNames());
  print(getComputerTypes());
  print(getComputerPrices());
  print(getComputerNewStatus());
  print(getComputerNamesMoreExpensiveThan2000());
  print(getFullNamesOfNewComputers());
  print(getPricesOfNewComputers());
}
