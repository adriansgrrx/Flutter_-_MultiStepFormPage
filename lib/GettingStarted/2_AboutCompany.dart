import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_ledger_ai/GettingStarted/1_RoleBusiness.dart';
import 'package:smart_ledger_ai/GettingStarted/3_ChartAccount.dart';

class AboutCompanyPage extends StatefulWidget {
  const AboutCompanyPage({super.key});

  @override
  State<AboutCompanyPage> createState() => _AboutCompanyPageState();
}

class _AboutCompanyPageState extends State<AboutCompanyPage> {
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
                  "About your company",
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: const Color(0xFF1D1D1F),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15.0,
                    top: 15,
                    bottom: 15.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                          border: Border.all(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                        ),
                        child: const Icon(
                          Icons
                              .add, // Replace this with the icon you want to use
                          color:
                              Colors.grey, // Customize the icon color as needed
                          size: 24, // Customize the icon size as needed
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 60.0),
                        child: SizedBox(
                          width: 30,
                          height: 30,
                          child: Icon(
                            Icons.camera_alt,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
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
                            'Company name',
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'TIN Number',
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
                            'Email Address',
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
                                    builder: (_) => const RoleBusinessPage()));
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
                                    builder: (_) => const ChartAccountPage()));
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
