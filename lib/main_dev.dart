import 'package:blabla/data/repositories/location/location_repository.dart';
import 'package:blabla/data/repositories/location/location_repository_mock.dart';
import 'package:blabla/data/repositories/ride/ride_repository.dart';
import 'package:blabla/data/repositories/ride/ride_repository_mock.dart';
import 'package:blabla/data/repositories/ride_preferenece/ride_preference_repository.dart';
import 'package:blabla/data/repositories/ride_preferenece/ride_preference_repository_mock.dart';
import 'package:blabla/main_common.dart';
import 'package:blabla/ui/states/ride_preference_state.dart';
import 'package:provider/provider.dart';
import 'package:nested/nested.dart';


List<SingleChildWidget> get providersLocal {
  return [
    Provider<LocationRepository>(create: (context) => LocationRepositoryMock()),
    Provider<RideRepository>(create: (context) => RideRepositoryMock()),
    Provider<RidePreferenceRepository>(create: (context) => RidePreferenceRepositoryMock()),
    ChangeNotifierProvider<RidePreferenceState>(create: (context) => RidePreferenceState(ridePreferenceRepository: context.read<RidePreferenceRepository>())),
  ];
}

void main() {
  mainCommon(providersLocal);
}
