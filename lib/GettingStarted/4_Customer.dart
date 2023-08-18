import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_ledger_ai/GettingStarted/3_ChartAccount.dart';
import 'package:smart_ledger_ai/GettingStarted/5_Supplier.dart';

class CustomerPage extends StatefulWidget {
  const CustomerPage({super.key});

  @override
  State<CustomerPage> createState() => _CustomerPageState();
}

class _CustomerPageState extends State<CustomerPage> {
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
                  "Customer",
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: const Color(0xFF1D1D1F),
                  ),
                ),
                const SizedBox(
                  height: 20,
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
                              maxLength: 40,
                              style: GoogleFonts.plusJakartaSans(
                                  fontSize: 16, color: Colors.black),
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                prefix: Text(
                                  'Name | ',
                                  style: GoogleFonts.plusJakartaSans(
                                      fontSize: 14, color: Colors.black),
                                ),
                                hintText: 'Business Type',
                                suffixIcon: const Icon(Icons.arrow_drop_down),
                                hintStyle: GoogleFonts.plusJakartaSans(
                                    fontSize: 14, color: Colors.black),
                                counterText: '',
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                                labelStyle: GoogleFonts.plusJakartaSans(
                                    fontSize: 14, color: Colors.black),
                                border: const OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          height: 50,
                          color: const Color(0xFFD9D9D9),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    '1000021',
                                    style: GoogleFonts.plusJakartaSans(
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Text(
                                    'Transaction',
                                    style: GoogleFonts.plusJakartaSans(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 16.0),
                                    child: Icon(
                                      Icons.edit_note,
                                      color: Colors.blue,
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 16.0),
                                    child: Icon(
                                      Icons.delete,
                                      color: Colors.red,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 8.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {
                              // Implement the recovery password logic here
                            },
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.add,
                                  color: Colors.blue,
                                ),
                                Text(
                                  'Add file',
                                  style: GoogleFonts.plusJakartaSans(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Colors.blue),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
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
                                    builder: (_) => const SupplierPage()));
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
