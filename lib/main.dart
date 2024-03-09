import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uiassignment/page1.dart';
import 'package:uiassignment/page2.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: GoogleFonts.dmSansTextTheme()),
      home: const PageWidgte(),
    ),
  );
}
