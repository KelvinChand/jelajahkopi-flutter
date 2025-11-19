import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart'; // ← WAJIB untuk PointerDeviceKind
import 'screens/home_screen.dart';
import 'utils/app_theme.dart';

class JelajahKopiApp extends StatelessWidget {
  const JelajahKopiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jelajah Kopi',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,

      // Responsive scroll (mouse + touch)
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.touch,
          PointerDeviceKind.mouse,
          PointerDeviceKind.trackpad,
        },
      ),

      home: const ResponsiveLayout(),
    );
  }
}

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Web/tablet breakpoint
        if (constraints.maxWidth >= 900) {
          return const WebScaffold();
        } else {
          return const HomeScreen();
        }
      },
    );
  }
}

class WebScaffold extends StatelessWidget {
  const WebScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Jelajah Kopi Web")),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 900),
          child: const HomeScreen(),
        ),
      ),
    );
  }
}
