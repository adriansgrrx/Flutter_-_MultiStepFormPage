// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:smart_ledger_ai/GettingStarted/2_AboutCompany.dart';

class RoleBusinessPage extends StatefulWidget {
  const RoleBusinessPage({super.key});

  @override
  State<RoleBusinessPage> createState() => _RoleBusinessPageState();
}

class _RoleBusinessPageState extends State<RoleBusinessPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
            child: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Getting started',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1D1D1F),
              ),
            ),
            const Text(
              "What's your role at your business?",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1D1D1F),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 120,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                        ),
                        child: const Icon(
                          Icons
                              .person, // Replace this with the icon you want to use
                          color: Colors
                              .black, // Customize the icon color as needed
                          size: 24, // Customize the icon size as needed
                        ),
                      ),
                      const Text(
                        'Owner',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16, // Adjust the font size as needed
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 100),
                  Column(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                        ),
                        child: const Icon(
                          Icons
                              .menu_book, // Replace this with the icon you want to use
                          color: Colors
                              .black, // Customize the icon color as needed
                          size: 24, // Customize the icon size as needed
                        ),
                      ),
                      const Text(
                        'Book keeper',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16, // Adjust the font size as needed
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 120,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                        ),
                        child: const Icon(
                          Icons
                              .account_balance, // Replace this with the icon you want to use
                          color: Colors
                              .black, // Customize the icon color as needed
                          size: 24, // Customize the icon size as needed
                        ),
                      ),
                      const Text(
                        'Accountant',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16, // Adjust the font size as needed
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 100),
                  Column(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                        ),
                        child: const Icon(
                          Icons
                              .people, // Replace this with the icon you want to use
                          color: Colors
                              .black, // Customize the icon color as needed
                          size: 24, // Customize the icon size as needed
                        ),
                      ),
                      const Text(
                        'Employee',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16, // Adjust the font size as needed
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
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
                  color: Colors.red, // Red color for the button
                  borderRadius: BorderRadius.circular(
                      5), // Set the border radius value as you desire
                ),
                child: const Center(
                  child: Text(
                    'Next',
                    style: TextStyle(
                      color: Colors.white, // Text color (white in this case)
                      fontSize: 16, // Font size of the text
                      fontWeight: FontWeight.bold, // Font weight of the text
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    )));
  }
}
