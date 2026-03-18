import 'package:blabla/data/dummy_data.dart';
import 'package:blabla/data/repositories/ride_preferenece/ride_preference_repository.dart';
import 'package:blabla/model/ride_pref/ride_pref.dart';

class RidePreferenceRepositoryMock implements RidePreferenceRepository {
  @override
  Future<void> addPreferenceToHistory(RidePreference ridePreference) async {
    fakeRidePrefs.add(ridePreference);
  }

  @override
  Future<List<RidePreference>> getAllPreferenceHistory() async{
    return fakeRidePrefs;
  }
}
