import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Test extends StatefulWidget {
  const Test({Key? key});

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  bool showAdditionalButton = false;
  String fabLabel = 'Add Item';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: Stack(
          children: [
            Positioned(
              bottom: 0,
              right: 0,
              child: Row(
                children: [
                  Visibility(
                    visible: showAdditionalButton,
                    child: Text(
                      'Add supplier manually',
                      style: GoogleFonts.plusJakartaSans(
                        color: Colors.black,
                        fontSize: 10.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(width: 8.0),
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        showAdditionalButton = !showAdditionalButton;
                        fabLabel = showAdditionalButton ? 'Close' : 'Add Item';
                      });
                    },
                    child: showAdditionalButton
                        ? Icon(Icons.people)
                        : Icon(Icons.add),
                    backgroundColor: const Color(0xFF2C3A76),
                    tooltip: fabLabel,
                  ),
                ],
              ),
            ),
            if (showAdditionalButton)
              Positioned(
                top: 560,
                right: 0,
                child: Row(
                  children: [
                    Text(
                      'Import Supplier',
                      style: GoogleFonts.plusJakartaSans(
                        color: Colors.black,
                        fontSize: 10.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    FloatingActionButton(
                      onPressed: () {
                        // Handle the additional FAB's onPressed action here
                      },
                      child: Icon(
                        Icons.people,
                        color: Colors.blue,
                      ),
                      backgroundColor: Colors.white,
                      tooltip: 'Additional FAB',
                    ),
                  ],
                ),
              ),
          ],
        ),
        backgroundColor: const Color(0xFFFFFBF2),
        appBar: AppBar(
            // Your app bar code...
            ),
        body: GestureDetector(
          onTap: () {
            if (showAdditionalButton) {
              setState(() {
                showAdditionalButton = false;
                fabLabel = 'Add Item';
              });
            }
          },
          child: Stack(
            children: [
              // Your content here
            ],
          ),
        ),
        // drawer: const NavigationDrawer(),
      ),
    );
  }
}
