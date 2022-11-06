import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SeachPage extends StatefulWidget {
  const SeachPage({super.key});

  @override
  State<SeachPage> createState() => _SeachPageState();
}

class _SeachPageState extends State<SeachPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Search',
        style: GoogleFonts.dosis(fontSize: 24, color: Colors.white),
      ),
    );
  }
}
