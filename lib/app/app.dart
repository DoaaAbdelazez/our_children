import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:our_children/generated/l10n.dart';
import '../core/routes/app_router.dart';

class OurChildren extends StatelessWidget {
  const OurChildren({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      locale: const Locale('ar'),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const[
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
          
      routerConfig: router,
    );
  }
}
