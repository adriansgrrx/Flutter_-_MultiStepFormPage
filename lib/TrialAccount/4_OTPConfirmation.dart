import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_ledger_ai/GettingStarted/1_RoleBusiness.dart';

class OTPConfirmationPage extends StatefulWidget {
  final int boxCount = 6;
  final double boxSize = 40.0;
  final double borderRadius = 5.0;

  const OTPConfirmationPage({super.key});

  @override
  State<OTPConfirmationPage> createState() => _OTPConfirmationPageState();
}

class _OTPConfirmationPageState extends State<OTPConfirmationPage> {
  late List<TextEditingController> _controllers;
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();

    _controllers = List.generate(
      widget.boxCount,
      (_) => TextEditingController(),
    );

    _focusNode = FocusNode();
    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        _controllers.forEach((controller) => controller.clear());
      }
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _controllers.forEach((controller) => controller.dispose());
    super.dispose();
  }

  Widget buildOtpBox(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 8.0), // Adjust the spacing here
      child: Container(
        width: widget.boxSize,
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          border: Border.all(
            color: Colors.grey,
            width: 1.0,
          ),
          color: const Color(0xFFD9D9D9), // Add the desired color here
        ),
        child: Center(
          child: TextFormField(
            decoration: const InputDecoration(
              border: InputBorder.none, // Hide the border of the TextFormField
              counterText: '', // Remove the counter text
            ),
            textAlign: TextAlign.center,
            maxLength: 1,
            keyboardType: TextInputType.number,
            style: const TextStyle(fontSize: 18.0),
          ),
        ),
      ),
    );
  }

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
                    "Confirmation",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF1D1D1F),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, bottom: 24.0),
                  child: Text(
                    "We emailed you the six digit code to juandelacruz@gmail.com\n\nEnter the code below to confirm your email address to sign up.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: const Color(0xFF1D1D1F),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(widget.boxCount, (index) {
                    return GestureDetector(
                      onTap: () {
                        // Handle tapping on the box
                      },
                      child: buildOtpBox(index),
                    );
                  }),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 180.0),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const RoleBusinessPage()),
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
                          'Continue',
                          style: GoogleFonts.plusJakartaSans(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
