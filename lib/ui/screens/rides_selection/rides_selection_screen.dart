import 'package:blabla/data/repositories/ride/ride_repository.dart';
import 'package:blabla/ui/screens/rides_selection/view_model/rides_selection_view_model.dart';
import 'package:blabla/ui/screens/rides_selection/widgets/rides_selection_content.dart';
import 'package:blabla/ui/states/ride_preference_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RidesSelectionScreen extends StatelessWidget {
  const RidesSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => RidesSelectionViewModel(
        ridePreferenceState: ctx.read<RidePreferenceState>(),
        rideRepository: ctx.read<RideRepository>(),
      ),
      child: Builder(
        builder: (ctx) => RidesSelectionContent(
          ridesSelectionViewModel: ctx.watch<RidesSelectionViewModel>(),
        ),
      ),
    );
  }
}
