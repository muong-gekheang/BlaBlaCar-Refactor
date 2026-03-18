import 'package:blabla/data/repositories/location/location_repository.dart';
import 'package:blabla/data/repositories/location/location_repository_mock.dart';
import 'package:blabla/data/repositories/ride/ride_repository.dart';
import 'package:blabla/data/repositories/ride/ride_repository_mock.dart';
import 'package:blabla/data/repositories/ride_preferenece/ride_preference_repository.dart';
import 'package:blabla/data/repositories/ride_preferenece/ride_preference_repository_mock.dart';
import 'package:blabla/main_common.dart';
import 'package:provider/provider.dart';

List<Provider> get providersLocal {
  return [
    Provider<LocationRepository>(create: (context) => LocationRepositoryMock()),
    Provider<RideRepository>(create: (context) => RideRepositoryMock()),
    Provider<RidePreferenceRepository>(create: (context) => RidePreferenceRepositoryMock()),
  ];
}

void main() {
  mainCommon(providersLocal);
}
