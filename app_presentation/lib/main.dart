import 'dart:async';

import 'package:app_data/app_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'injectable.dart';
import 'routes/auto_route_config.dart';

void main() {
  runZonedGuarded<Future<void>>(() async {
    WidgetsFlutterBinding.ensureInitialized();

    // Add more dependencies here before running the app
    await configureDataDependencies();
    await configureUseCaseDependencies();
    await configureDependencies();

    //run app
    runApp(const MainApp());
  }, (error, stack) {
    // Can add firebase log here
    print(error);
    print(stack);
  });
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: appRouter.config(),
      ),
    );
  }
}
