import 'package:flutter/material.dart';

import 'package:our_children/core/routes/app_router.dart';

void main() {
  runApp(const OurChildren());
}

class OurChildren extends StatelessWidget {
  const OurChildren({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
