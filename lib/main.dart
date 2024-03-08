import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uiassignment/page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      theme: ThemeData(textTheme: GoogleFonts.dmSansTextTheme()),
      home: const PageWidgte(),
    ),
  );
}
