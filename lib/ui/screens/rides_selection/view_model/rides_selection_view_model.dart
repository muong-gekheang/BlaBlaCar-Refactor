import 'package:blabla/data/repositories/ride/ride_repository.dart';
import 'package:blabla/model/ride/ride.dart';
import 'package:blabla/model/ride_pref/ride_pref.dart';
import 'package:blabla/ui/states/ride_preference_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class RidesSelectionViewModel extends ChangeNotifier {
  final RidePreferenceState ridePreferenceState;
  final RideRepository rideRepository;
  RidesSelectionViewModel({
    required this.ridePreferenceState,
    required this.rideRepository,
  }) {
    ridePreferenceState.addListener(notifyListeners);
    loadRide();
  }

  List<Ride> allRides = [];

  Future<void> loadRide() async {
    allRides = await rideRepository.getAllRides();
    notifyListeners();
  }

  RidePreference? get currentPreference =>
      ridePreferenceState.selectedPreference;

  List<Ride> get matchingRides {
    if (currentPreference == null) return [];

    return allRides
        .where(
          (ride) =>
              ride.departureLocation == currentPreference!.departure &&
              ride.arrivalLocation == currentPreference!.arrival &&
              ride.availableSeats == currentPreference!.requestedSeats,
        )
        .toList();
  }

  @override
  void dispose() {
    ridePreferenceState.removeListener(notifyListeners);
    super.dispose();
  }
}
