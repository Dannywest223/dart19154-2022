// police_officer.dart

import 'dart:core';
import 'parked_car.dart'; // Import ParkedCar class
import 'parking_meter.dart'; // Import ParkingMeter class
import 'parking_ticket.dart'; // Import ParkingTicket class

/// Annotation for each class to describe the responsibilities.
class ClassAnnotation {
  final String description;
  const ClassAnnotation(this.description);
}

// Class for PoliceOfficer
@ClassAnnotation('Represents a police officer who issues parking tickets.')
class PoliceOfficer {
  final String name;
  final String badgeNumber;

  // Constructor
  PoliceOfficer(this.name, this.badgeNumber);

  // Method to issue a parking ticket
  ParkingTicket? issueTicket(ParkedCar car, ParkingMeter meter) {
    if (car.minutesParked > meter.minutesPurchased) {
      return ParkingTicket(car, this);
    } else {
      return null; // Return null if no ticket is issued
    }
  }

  // toString method
  @override
  String toString() {
    return 'Officer: $name, Badge No: $badgeNumber';
  }
}
