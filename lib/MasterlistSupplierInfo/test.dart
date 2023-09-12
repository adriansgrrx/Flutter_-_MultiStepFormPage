import 'package:flutter/material.dart';
import 'package:smart_ledger_ai/MasterlistSupplierInfo/2_SupplierInfo.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool showAdditionalButton = false;
  String fabLabel = 'Add Item'; // Initial label for the FAB

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Floating Button Example'),
        ),
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Center(
              child: Text('Content goes here'),
            ),
            showAdditionalButton
                ? Positioned(
                    left: 293.0,
                    bottom: 90.0, // Adjust the position as needed
                    child: Row(
                      children: [
                        Text(
                          'Label',
                          style: TextStyle(fontSize: 16.0),
                        ),
                        SizedBox(
                          width: 8.0,
                        ), // Add spacing between button and label
                        FloatingActionButton(
                          onPressed: () {
                            // Add your action here
                            print('Additional Floating button pressed');
                          },
                          child: Icon(Icons.star),
                          backgroundColor: Colors
                              .orange, // Customize the button's background color
                        ),
                      ],
                    ),
                  )
                : SizedBox(),
          ],
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Visibility(
              visible:
                  showAdditionalButton, // Only show the label if showAdditionalButton is true
              child: Text(
                'Main Button',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            SizedBox(width: 8.0), // Add spacing between the main FAB and label
            FloatingActionButton(
              onPressed: () {
                // Check if showAdditionalButton is true or false
                if (showAdditionalButton) {
                  // If it's true, navigate to a new page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          SupplierInfo(), // Replace SecondPage with your desired page
                    ),
                  );
                } else {
                  // If it's false, toggle the visibility of the additional button and change the label
                  setState(() {
                    showAdditionalButton = !showAdditionalButton;
                    fabLabel = showAdditionalButton
                        ? 'Close'
                        : 'Add Item'; // Change the label
                  });
                }
              },
              child: showAdditionalButton ? Icon(Icons.close) : Icon(Icons.add),
              backgroundColor:
                  Colors.blue, // Customize the button's background color
              tooltip: fabLabel, // Display the label as a tooltip
            ),
          ],
        ),
      ),
    );
  }
}
