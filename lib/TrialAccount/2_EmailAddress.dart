import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_ledger_ai/TrialAccount/3_Password.dart';

class EmailAddressPage extends StatefulWidget {
  const EmailAddressPage({super.key});

  @override
  State<EmailAddressPage> createState() => _EmailAddressPageState();
}

class _EmailAddressPageState extends State<EmailAddressPage> {
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
                  'Start a 30-day free trial',
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF1D1D1F),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Text(
                    "We’re excited to have you explore \n Smartledger.ai and it’s all features.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: const Color(0xFF1D1D1F),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, bottom: 24.0),
                  child: Text(
                    "Step 2 of 3",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF1D1D1F),
                    ),
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Mobile Number',
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
                      padding: const EdgeInsets.only(top: 240.0),
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const PasswordPage()),
                          );
                        },
                        child: Container(
                          width: double
                              .infinity, // Expand the container's width to the maximum
                          height: 50,
                          decoration: BoxDecoration(
                            color: const Color(0xFF2C3A76),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              'Next',
                              style: GoogleFonts.plusJakartaSans(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
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
