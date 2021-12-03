import 'package:flutter/material.dart';
import 'package:icapps_generator_example/viewmodel/user_detail/user_detail_viewmodel.dart';
import 'package:provider/provider.dart';

class UserDetailScreen extends StatelessWidget implements UserDetailNavigator {
  static const String routeName = 'user_detail';

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<UserDetailViewModel>(
      child: Consumer<UserDetailViewModel>(
        builder: (context, value, child) => const Scaffold(
          body: Center(),
        ),
      ),
      create: (context) => kiwi.Container().resolve()..init(this),
    );
  }
}
