import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_ledger_ai/GettingStarted/2_AboutCompany.dart';
import 'package:smart_ledger_ai/GettingStarted/4_Customer.dart';

class ChartAccountPage extends StatefulWidget {
  const ChartAccountPage({super.key});

  @override
  State<ChartAccountPage> createState() => _ChartAccountPageState();
}

class _ChartAccountPageState extends State<ChartAccountPage> {
  String _selectedOption = 'Yes';
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
                  "Chart of account",
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: const Color(0xFF1D1D1F),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Do you want to auto generate?",
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF1D1D1F),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Radio(
                      value: 'Yes',
                      groupValue: _selectedOption,
                      onChanged: (value) {
                        setState(() {
                          _selectedOption = value!;
                        });
                      },
                    ),
                    const Text('Yes'),
                    Radio(
                      value: 'No',
                      groupValue: _selectedOption,
                      onChanged: (value) {
                        setState(() {
                          _selectedOption = value!;
                        });
                      },
                    ),
                    const Text('No'),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 50,
                            child: TextFormField(
                              keyboardType: TextInputType.visiblePassword,
                              decoration: InputDecoration(
                                hintText: "What's your Industry? ",
                                suffixIcon: const Icon(Icons.arrow_drop_down),
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                                hintStyle: GoogleFonts.plusJakartaSans(
                                    fontSize: 12, color: Colors.black),
                                border: const OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Import your file in a, .Excel, .PDF, .Docx, Format.',
                            style: GoogleFonts.plusJakartaSans(
                                fontSize: 12, color: Colors.black),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: 50,
                            child: TextFormField(
                              keyboardType: TextInputType.visiblePassword,
                              decoration: InputDecoration(
                                suffixIcon: const Icon(Icons.attachment),
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
                                    builder: (_) => const AboutCompanyPage()));
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
                                    builder: (_) => const CustomerPage()));
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
                                'Next',
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
