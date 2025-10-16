import 'package:flutter/material.dart';
import 'package:otex_app/features/filteration/presentation/screens/filteration_screen.dart';
import 'package:otex_app/features/main/presentation/provider/change_index.dart';
import 'package:otex_app/features/main/presentation/screens/main_screen.dart';
import 'package:provider/provider.dart';

import 'core/di/di.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ChangeIndexProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,

        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        initialRoute: MainScreen.routeName,
        routes: {
          '/':(context)=>MainScreen(),
          FiltrationScreen.routeName:(context)=>FiltrationScreen()
        },
      ),
    );
  }
}
