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
          primary: const Color(0xFF19539D),
          secondary: const Color(0xFFF3F3F3),
          tertiary: const Color(0xFFFFCD05),
          surface: const Color(0xFF808285),
          onSurface: const Color.fromARGB(255, 65, 63, 63),
        ),
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
        inputDecorationTheme: InputDecorationTheme(
          labelStyle: TextStyle(
            color: Colors.grey,
            fontStyle: FontStyle.italic
          ),
          floatingLabelBehavior: FloatingLabelBehavior.never,
          fillColor: Colors.blue.withOpacity(0.2),
          filled: true,
          contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide.none,
          ),
        ),
      ),
      home: MainForm(),
    );
  }
}
