import 'package:expense_tracker/mainpage.dart';
import 'package:flutter/material.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: Color.fromARGB(255, 96, 59, 181),
);

var kDarkScheme = ColorScheme.fromSeed(
  seedColor: Color.fromARGB(255, 5, 9, 125),
  brightness: Brightness.dark,
);

void main() {
  runApp(
    MaterialApp(
      home: Mainpage(),
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: kColorScheme,
        appBarTheme: AppBarTheme(
          backgroundColor: kColorScheme.primary,
          foregroundColor: kColorScheme.onPrimary,
        ),
        cardTheme: CardTheme(
          color: kColorScheme.secondaryContainer,
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kColorScheme.primaryContainer,
            foregroundColor: kColorScheme.onPrimaryContainer,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          labelStyle: TextStyle(color: kColorScheme.onSurfaceVariant),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: kDarkScheme,
        appBarTheme: AppBarTheme(
          backgroundColor: kDarkScheme.primary,
          foregroundColor: kDarkScheme.onPrimary,
        ),
        cardTheme: CardTheme(
          color: kDarkScheme.secondaryContainer,
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kDarkScheme.primaryContainer,
            foregroundColor: kDarkScheme.onPrimaryContainer,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          labelStyle: TextStyle(color: kDarkScheme.onSurfaceVariant),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
      themeMode: ThemeMode.system,
    ),
  );
}
