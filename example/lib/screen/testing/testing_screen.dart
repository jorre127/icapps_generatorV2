import 'package:flutter/material.dart';
import 'package:icapps_generator_example/viewmodel/testing/testing_viewmodel.dart';
import 'package:kiwi/kiwi.dart' as kiwi;
import 'package:provider/provider.dart';

class TestingScreen extends StatelessWidget implements TestingNavigator {
  static const String routeName = 'testing';

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TestingViewModel>(
      child: Consumer<TestingViewModel>(
        builder: (context, value, child) => const Scaffold(
          body: Center(),
        ),
      ),
      create: (context) => kiwi.Container().resolve()..init(this),
    );
  }
}
