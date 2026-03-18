import 'package:blabla/data/repositories/ride_preferenece/ride_preference_repository.dart';
import 'package:blabla/model/ride_pref/ride_pref.dart';
import 'package:flutter/material.dart';

class RidePreferenceState extends ChangeNotifier {
  final RidePreferenceRepository ridePreferenceRepository;

  RidePreferenceState({required this.ridePreferenceRepository}){
    fetchHistory();
  }

  List<RidePreference> preferenceHistory = [];
  RidePreference? selectedPreference;

  void fetchHistory() async {
    preferenceHistory = await ridePreferenceRepository
        .getAllPreferenceHistory();
    notifyListeners();
  }

  void selectPreference(RidePreference ridePreference) {
    if (selectedPreference == ridePreference) return;

    selectedPreference = ridePreference;

    if (!preferenceHistory.contains(ridePreference)) {
      ridePreferenceRepository.addPreferenceToHistory(ridePreference);
    }

    notifyListeners();
  }
}
