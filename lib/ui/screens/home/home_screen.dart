import 'package:blabla/ui/screens/home/view_model/home_view_model.dart';
import 'package:blabla/ui/screens/home/widgets/home_screen_content.dart';
import 'package:blabla/ui/states/ride_preference_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) =>
          HomeViewModel(ridePreferenceState: ctx.read<RidePreferenceState>()),
      child: Builder(
        builder: (ctx) =>
            HomeScreenContent(homeViewModel: ctx.watch<HomeViewModel>()),
      ),
    );
  }
}
