import 'package:fibromyalgia_hospital/my_app.dart';
import 'package:flutter/material.dart';
import 'core/local_database/catch_helper.dart';
import 'core/local_database/services_locator.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await setup();
  await getIt<CacheHelper>().cacheInit();
  runApp(const FibromyalgiaApp());
}
