import 'package:flutter/material.dart';
import 'package:smart_ledger_ai/GettingStarted/1_RoleBusiness.dart';
import 'package:smart_ledger_ai/TrialAccount/1_FirstLastName.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'SmartLedger',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1D1D1F),
                      ),
                    ),
                    Text(
                      '.ai',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFED2F2F),
                      ),
                    ),
                  ],
                ),
                const Text(
                  'Welcome back!',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(0, 0, 0, 0.7),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Username',
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                          SizedBox(
                            height: 50,
                            child: TextFormField(
                              keyboardType: TextInputType.visiblePassword,
                              decoration: const InputDecoration(
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                                hintStyle: TextStyle(
                                    fontSize: 16, color: Colors.black),
                                border: OutlineInputBorder(),
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
                          const Text(
                            'Password',
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                          SizedBox(
                            height: 50,
                            child: TextFormField(
                              keyboardType: TextInputType.visiblePassword,
                              decoration: const InputDecoration(
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                                hintStyle: TextStyle(
                                    fontSize: 16, color: Colors.black),
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                onPressed: () {
                                  // Implement the recovery password logic here
                                },
                                child: const Text(
                                  'Recovery Password',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 8.0,
                        right: 8.0,
                        top: 8.0,
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) =>
                                            const RoleBusinessPage()));
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFED2F2F),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(12.0),
                                child: Text(
                                  'Sign In',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                              height:
                                  8.0), // Adjust the spacing between button and divider
                          const Center(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Divider(),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Text(
                                    'or sign with',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color: Colors.grey),
                                  ),
                                ),
                                Expanded(
                                  child: Divider(),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: () {
                                  // Add the action for signing in with Google here
                                },
                                icon: const Icon(
                                  Icons
                                      .android, // Replace with the Google logo icon
                                  color: Colors
                                      .red, // Replace with the desired color
                                ),
                              ),
                              const SizedBox(
                                  width: 16), // Add spacing between the buttons
                              IconButton(
                                onPressed: () {
                                  // Add the action for signing in with Facebook here
                                },
                                icon: const Icon(
                                  Icons
                                      .facebook, // Replace with the Facebook logo icon
                                  color: Colors
                                      .blue, // Replace with the desired color
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Don't have an account?",
                                style: TextStyle(
                                  color: Color(0xFF777777),
                                  fontSize:
                                      14, // Replace with the desired font size
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) =>
                                              const FirstLastNamePage()));
                                },
                                child: const Text(
                                  "Sign up for free",
                                  style: TextStyle(
                                    color: Color(0xFF0094FF),
                                    fontSize:
                                        14, // Replace with the desired font size
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
