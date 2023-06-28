import 'package:dexocat/2_application/core/services/theme_service.dart';
import 'package:dexocat/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeService(),
    child: const DexoCatApp(),
  ));
}

class DexoCatApp extends StatelessWidget {
  const DexoCatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(
      builder: (context, themeService, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode:
              themeService.isDarkModeOn ? ThemeMode.dark : ThemeMode.light,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          home: Scaffold(
            appBar: AppBar(
              title: const Text('DexoCat'),
              centerTitle: true,
              actions: [
                Switch(
                  value: Provider.of<ThemeService>(context).isDarkModeOn,
                  onChanged: (_) {
                    Provider.of<ThemeService>(
                      context,
                      listen: false,
                    ).toggleDarkMode();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
