import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button and Dropdown'),
      ),
      body: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                // Implement your button's action here
              },
              child: Text('Button'),
            ),
            Container(
              width: 0,
              height: 35,
              decoration: BoxDecoration(
                color: const Color(0xFF2C3A76),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                ),
              ),
              child: DropdownButton<String>(
                onChanged: (String? newValue) {
                  // Handle dropdown value change
                },
                items: <String>[
                  'Option 1',
                  'Option 2',
                  'Option 3',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                style: GoogleFonts.plusJakartaSans(
                  color: const Color(0xFF010A10),
                  fontSize: 10.0,
                ),
                underline: Container(
                  color: Colors.transparent,
                ),
                icon: Transform.translate(
                  offset: const Offset(-2, -2), // Adjust the Y offset as needed
                  child: const Icon(
                    Icons.arrow_drop_down,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
