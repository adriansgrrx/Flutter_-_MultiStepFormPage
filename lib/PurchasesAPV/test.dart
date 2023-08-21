import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: IndicatorPage(),
    );
  }
}

class IndicatorPage extends StatefulWidget {
  const IndicatorPage({super.key});

  @override
  _IndicatorPageState createState() => _IndicatorPageState();
}

class _IndicatorPageState extends State<IndicatorPage> {
  final int pageCount = 4; // Total number of pages
  int currentIndex = 0;
  final PageController _pageController = PageController();

  List<Widget> pageContents = [
    // Different content for each page
    SingleChildScrollView(
        // ... your content for Page 1
        ),
    Text('Content for Page 2'),
    Text('Content for Page 3'),
    Text('Content for Page 4'),
  ];

  void goToPage(int index) {
    if (index >= 0 && index < pageCount) {
      _pageController.animateToPage(
        index,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      setState(() {
        currentIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        actions: <Widget>[
          Row(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 45.0),
                    child: Container(
                      width: 130,
                      height: 20,
                      decoration: BoxDecoration(
                        color: const Color(0xFF2C3A76),
                        borderRadius: BorderRadius.circular(20),
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
                          offset: const Offset(
                              -2, -2), // Adjust the Y offset as needed
                          child: const Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white,
                          ),
                        ),
                        hint: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            'Categories',
                            style: GoogleFonts.plusJakartaSans(
                                color: Colors.white,
                                fontSize: 10.0,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 10.0,
                    top: 0.0, // Adjust this value to control overlap amount
                    child: Container(
                      width: 80,
                      height: 20,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0),
                        ),
                        border: Border.all(
                          color: Colors.black, // Set the border color
                          width: 0.1, // Set the border width
                        ),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 5.0,
                          ),
                          Expanded(
                            child: TextField(
                              style: TextStyle(
                                  color: Colors.black, fontSize: 10.0),
                              decoration: InputDecoration(
                                  // hintText: 'Search',
                                  hintStyle: TextStyle(
                                      color: Colors.black, fontSize: 10.0),
                                  border: InputBorder.none,
                                  contentPadding:
                                      EdgeInsets.symmetric(vertical: 13.0)),
                            ),
                          ),
                          Icon(
                            Icons.search,
                            color: Colors.black,
                            size: 20.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.notifications_none_rounded,
                    color: Color(0xFF040404),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 8.0,
                  right: 8.0,
                ),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: const Color(0xFF040404),
                        width: 2.0, // Adjust the border width as needed
                      ),
                    ),
                    child: const Icon(
                      Icons.question_mark,
                      size: 20,
                      color: Color(0xFF040404),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.more_vert,
                    color: Color(0xFF040404),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Container(
              height: 20,
              child: Row(
                children: [
                  for (int i = 0; i < pageCount; i++)
                    Expanded(
                      child: Container(
                        height: 3,
                        color: currentIndex >= i
                            ? Color(0xFF2C3A76)
                            : Color.fromARGB(255, 184, 184, 185),
                      ),
                    ),
                ],
              ),
            ),
          ),
          Expanded(
            child: PageView.builder(
              physics: const NeverScrollableScrollPhysics(),
              controller: _pageController,
              itemCount: pageCount,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Expanded(child: pageContents[index]),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          if (index == pageCount - 1) // On the last page
                            ElevatedButton(
                              onPressed: () {
                                // Handle save action
                              },
                              child: Text('Save'),
                            )
                          else
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  currentIndex--;
                                });
                                _pageController.animateToPage(
                                  currentIndex,
                                  duration: Duration(milliseconds: 300),
                                  curve: Curves.easeInOut,
                                );
                              },
                              child: Text('Back'),
                            ),
                          SizedBox(width: 10),
                          if (index < pageCount - 1)
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  currentIndex++;
                                });
                                _pageController.animateToPage(
                                  currentIndex,
                                  duration: Duration(milliseconds: 300),
                                  curve: Curves.easeInOut,
                                );
                              },
                              child: Text('Next'),
                            ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
