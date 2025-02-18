import 'parked_car.dart';
import 'parking_meter.dart';
import 'parking_ticket.dart';
import 'police_officer.dart';

void main() {
  // Create objects
  var officer = PoliceOfficer('John Doe', '1234');

  // Correctly calling the parameterized constructor
  var parkedCar =
      ParkedCar('Toyota', 'Camry', 'Red', 'ABC123', 150); // 150 minutes parked

  // Create parking meter with purchased time
  var parkingMeter = ParkingMeter(120); // 120 minutes purchased

  // Issue a parking ticket if applicable
  var ticket = officer.issueTicket(parkedCar, parkingMeter);

  // Print the result
  if (ticket != null) {
    print(ticket);
  } else {
    print('No parking ticket issued. The car is parked legally.');
  }
}
