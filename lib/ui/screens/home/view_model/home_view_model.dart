import 'package:blabla/model/ride_pref/ride_pref.dart';
import 'package:blabla/ui/states/ride_preference_state.dart';
import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {
  final RidePreferenceState ridePreferenceState;
  HomeViewModel({required this.ridePreferenceState}) {
    ridePreferenceState.addListener(notifyListeners);
  }
  @override
  void dispose() {
    ridePreferenceState.removeListener(notifyListeners);
    super.dispose();
  }

  RidePreference? getSelectedRidePreference() {
    return ridePreferenceState.selectedPreference;
  }

  List<RidePreference> getRidePreferenceHistory() {
    return ridePreferenceState.preferenceHistory;
  }

  void selectPreference(RidePreference ridePreference) {
    ridePreferenceState.selectPreference(ridePreference);
  }
}
