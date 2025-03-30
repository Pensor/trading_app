import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'home.dart';
import 'theme.dart';
import 'package:macos_ui/macos_ui.dart';

void main() async {
  await dotenv.load();

  if (Platform.isMacOS) {
    const config = MacosWindowUtilsConfig();
    await config.apply();
  }

  runApp(ProviderScope(
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    if (Platform.isMacOS) {
      return MacosApp(
        theme: MacosThemeData.light(),
        darkTheme: MacosThemeData.dark(),
        themeMode: ThemeMode.system,
        home: const Home(),
        debugShowCheckedModeBanner: false,
      );
    } else {
      return MaterialApp(
        home: const Home(),
        theme: theme,
        darkTheme: ThemeData.dark(useMaterial3: true),
        debugShowCheckedModeBanner: false,
      );
    }
  }
}
