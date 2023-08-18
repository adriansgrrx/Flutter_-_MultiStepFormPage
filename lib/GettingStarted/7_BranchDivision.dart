import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_ledger_ai/Dashboard/MainDashboard.dart';
import 'package:smart_ledger_ai/GettingStarted/6_Bank.dart';

class BranchDivisionPage extends StatefulWidget {
  const BranchDivisionPage({super.key});

  @override
  State<BranchDivisionPage> createState() => _BranchDivisionPageState();
}

class _BranchDivisionPageState extends State<BranchDivisionPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Getting started',
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF1D1D1F),
                  ),
                ),
                Text(
                  "Branch/Division",
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: const Color(0xFF1D1D1F),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Name',
                            style: GoogleFonts.plusJakartaSans(
                                fontSize: 12, color: Colors.black),
                          ),
                          SizedBox(
                            height: 50,
                            child: TextFormField(
                              keyboardType: TextInputType.visiblePassword,
                              decoration: InputDecoration(
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                                hintStyle: GoogleFonts.plusJakartaSans(
                                    fontSize: 16, color: Colors.black),
                                border: const OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Address',
                            style: GoogleFonts.plusJakartaSans(
                                fontSize: 12, color: Colors.black),
                          ),
                          SizedBox(
                            height: 50,
                            child: TextFormField(
                              keyboardType: TextInputType.visiblePassword,
                              decoration: InputDecoration(
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                                hintStyle: GoogleFonts.plusJakartaSans(
                                    fontSize: 16, color: Colors.black),
                                border: const OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        MaterialButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => const BankPage()));
                          },
                          child: Container(
                            width: 120,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.grey, // Red color for the button
                              borderRadius: BorderRadius.circular(
                                  5), // Set the border radius value as you desire
                            ),
                            child: Center(
                              child: Text(
                                'Back',
                                style: GoogleFonts.plusJakartaSans(
                                  color: Colors
                                      .white, // Text color (white in this case)
                                  fontSize: 16, // Font size of the text
                                  fontWeight: FontWeight
                                      .bold, // Font weight of the text
                                ),
                              ),
                            ),
                          ),
                        ),
                        MaterialButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => const MainDashboardPage()));
                          },
                          child: Container(
                            width: 120,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.red, // Red color for the button
                              borderRadius: BorderRadius.circular(
                                  5), // Set the border radius value as you desire
                            ),
                            child: Center(
                              child: Text(
                                'Finish',
                                style: GoogleFonts.plusJakartaSans(
                                  color: Colors
                                      .white, // Text color (white in this case)
                                  fontSize: 16, // Font size of the text
                                  fontWeight: FontWeight
                                      .bold, // Font weight of the text
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
