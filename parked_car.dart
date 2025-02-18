import 'dart:core';

/// Annotation for each class to describe the responsibilities.
class ClassAnnotation {
  final String description;
  const ClassAnnotation(this.description);
}

// Class for ParkedCar
@ClassAnnotation('Represents a parked car with its details.')
class ParkedCar {
  // Private instance variables
  String _make;
  String _model;
  String _color;
  String _licenseNumber;
  int _minutesParked;

  // Parameterized constructor only
  ParkedCar(this._make, this._model, this._color, this._licenseNumber,
      this._minutesParked);

  // Getters and Setters
  String get make => _make;
  set make(String value) => _make = value;

  String get model => _model;
  set model(String value) => _model = value;

  String get color => _color;
  set color(String value) => _color = value;

  String get licenseNumber => _licenseNumber;
  set licenseNumber(String value) => _licenseNumber = value;

  int get minutesParked => _minutesParked;
  set minutesParked(int value) => _minutesParked = value;

  // toString method
  @override
  String toString() {
    return 'Car: $_make $_model, Color: $_color, License: $_licenseNumber, Parked for: $_minutesParked minutes';
  }
}
