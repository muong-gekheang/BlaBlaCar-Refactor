import 'package:blabla/model/ride/ride.dart';
import 'package:blabla/model/ride_pref/ride_pref.dart';

abstract class RidePreferenceRepository {
  Future<List<RidePreference>> getAllPreferenceHistory();
  Future<void> addPreferenceToHistory(RidePreference ridePreference);
}
