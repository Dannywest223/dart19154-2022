// parking_meter.dart

import 'dart:core';

/// Annotation for each class to describe the responsibilities.
class ClassAnnotation {
  final String description;
  const ClassAnnotation(this.description);
}

// Class for ParkingMeter
@ClassAnnotation(
    'Represents a parking meter that tracks purchased parking time.')
class ParkingMeter {
  // Private instance variable
  int _minutesPurchased;

  // Parameterized constructor
  ParkingMeter(this._minutesPurchased);

  // Getter and Setter
  int get minutesPurchased => _minutesPurchased;
  set minutesPurchased(int value) => _minutesPurchased = value;

  // toString method
  @override
  String toString() {
    return 'Parking Meter: $_minutesPurchased minutes purchased';
  }
}
