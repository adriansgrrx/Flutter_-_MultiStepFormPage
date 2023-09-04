import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Grid Layout Example'),
        ),
        body: GridView.count(
          crossAxisCount: 2, // Number of columns
          crossAxisSpacing: 10.0, // Spacing between columns
          mainAxisSpacing: 10.0, // Spacing between rows
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.circular(10.0), // Adjust the radius as needed
                border: Border.all(
                  color: const Color(0xFF2C3A76), // Border color
                  width: 1.0, // Border width
                ),
              ),
              child: GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) {
                  //       return YourDestinationPage();
                  //     },
                  //   ),
                  // );
                },
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Text(
                          'Non-inventory',
                          style: GoogleFonts.plusJakartaSans(
                              color: Colors.black,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600),
                        ),
                        const Divider(
                          thickness: 0.5,
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 15.0, bottom: 15.0),
                          child:
                              SvgPicture.asset('assets/custom_icons/box.svg'),
                        ),
                        Center(
                          child: Text(
                            'Products you buy and/or sell but don’t need to (or can’t) track quantities of, for example, nuts and bolts used in an installation.',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.plusJakartaSans(
                                color: Colors.black,
                                fontSize: 10.0,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.circular(10.0), // Adjust the radius as needed
                border: Border.all(
                  color: const Color(0xFF2C3A76), // Border color
                  width: 1.0, // Border width
                ),
              ),
              child: GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) {
                  //       return YourDestinationPage();
                  //     },
                  //   ),
                  // );
                },
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Text(
                          'Service',
                          style: GoogleFonts.plusJakartaSans(
                              color: Colors.black,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600),
                        ),
                        const Divider(
                          thickness: 0.5,
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 15.0, bottom: 15.0),
                          child: SvgPicture.asset(
                              'assets/custom_icons/service.svg'),
                        ),
                        Center(
                          child: Text(
                            'Services that you provide to customers, for example, landscaping or tax preparation services.',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.plusJakartaSans(
                                color: Colors.black,
                                fontSize: 10.0,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.circular(10.0), // Adjust the radius as needed
                border: Border.all(
                  color: const Color(0xFF2C3A76), // Border color
                  width: 1.0, // Border width
                ),
              ),
              child: GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) {
                  //       return YourDestinationPage();
                  //     },
                  //   ),
                  // );
                },
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Text(
                          'Bundle',
                          style: GoogleFonts.plusJakartaSans(
                              color: Colors.black,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600),
                        ),
                        const Divider(
                          thickness: 0.5,
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 15.0, bottom: 15.0),
                          child: SvgPicture.asset(
                              'assets/custom_icons/bundle.svg'),
                        ),
                        Center(
                          child: Text(
                            'A collection of products and/or services that you sell together, for example, a gift basket of fruit, cheese, and wine.',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.plusJakartaSans(
                                color: Colors.black,
                                fontSize: 10.0,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.circular(10.0), // Adjust the radius as needed
                border: Border.all(
                  color: const Color(0xFF2C3A76), // Border color
                  width: 1.0, // Border width
                ),
              ),
              child: GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) {
                  //       return YourDestinationPage();
                  //     },
                  //   ),
                  // );
                },
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Text(
                          'Inventory',
                          style: GoogleFonts.plusJakartaSans(
                              color: Colors.black,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600),
                        ),
                        const Divider(
                          thickness: 0.5,
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 15.0, bottom: 15.0),
                          child: SvgPicture.asset(
                              'assets/custom_icons/inventory.svg'),
                        ),
                        Center(
                          child: Text(
                            'Products you buy and/or sell and that you track quantities of.',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.plusJakartaSans(
                                color: Colors.black,
                                fontSize: 10.0,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
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
