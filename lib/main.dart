import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tesjurusanunimma/mainform.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0xFF19539D),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: const Color(0xFFF3F3F3),
          tertiary: const Color(0xFFFFCD05),
        ),
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: MainForm()
    );
  }
}
