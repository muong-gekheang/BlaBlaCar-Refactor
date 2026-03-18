import 'package:blabla/model/ride/ride.dart';
import 'package:blabla/ui/screens/rides_selection/rides_selection_screen.dart';
import 'package:blabla/ui/screens/rides_selection/view_model/rides_selection_view_model.dart';
import 'package:blabla/ui/screens/rides_selection/widgets/rides_selection_header.dart';
import 'package:blabla/ui/screens/rides_selection/widgets/rides_selection_tile.dart';
import 'package:blabla/ui/theme/theme.dart';
import 'package:flutter/material.dart';

class RidesSelectionContent extends StatelessWidget {
  final RidesSelectionViewModel ridesSelectionViewModel;
  const RidesSelectionContent({super.key, required this.ridesSelectionViewModel});

  void onBackTap(BuildContext context) {
    Navigator.pop(context);
  }

  void onFilterPressed() {
    // TODO
  }

  void onRideSelected(Ride ride) {
    // Later
  }

  void onPreferencePressed(){
    
  }
  @override
  Widget build(BuildContext context) {
    if (ridesSelectionViewModel.currentPreference == null) {
      return const Scaffold(
        body: Center(child: Text('No preference selected')),
      );
    }

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: BlaSpacings.m,
          right: BlaSpacings.m,
          top: BlaSpacings.s,
        ),
        child: Column(
          children: [
            RideSelectionHeader(
              ridePreference: ridesSelectionViewModel.currentPreference!,
              onBackPressed: () => onBackTap(context),
              onFilterPressed: onFilterPressed,
              onPreferencePressed: onPreferencePressed,
            ),

            SizedBox(height: 100),

            Expanded(
              child: ListView.builder(
                itemCount: ridesSelectionViewModel.matchingRides.length,
                itemBuilder: (ctx, index) => RideSelectionTile(
                  ride: ridesSelectionViewModel.matchingRides[index],
                  onPressed: () => onRideSelected(ridesSelectionViewModel.matchingRides[index]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
