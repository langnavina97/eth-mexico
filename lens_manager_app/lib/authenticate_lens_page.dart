import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lens_manager/lens/authenticate.dart';

class AuthenticateLensPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: (() async {
          AuthenticateLens auth = AuthenticateLens();
          // TODO call bloc
          await auth.signNounce();
        }),
        child: Text("Lens Profile"));
  }
}
