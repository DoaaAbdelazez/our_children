import 'package:flutter/material.dart';
import 'package:our_children/core/database/cache/cache_helper.dart';
import 'package:our_children/core/services/services_locator.dart';
import 'app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
  await getIt<CacheHelper>().init();
  runApp(const OurChildren());
}
