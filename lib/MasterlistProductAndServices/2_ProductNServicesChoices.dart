import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductNServicesChoices extends StatefulWidget {
  const ProductNServicesChoices({super.key});

  @override
  State<ProductNServicesChoices> createState() => _ProductNServicesChoices();
}

class _ProductNServicesChoices extends State<ProductNServicesChoices> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFFFFBF2),
        body: Padding(
          padding: const EdgeInsets.only(
              top: 15.0, bottom: 0.0, left: 15.0, right: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF2C3A76),
                    ),
                    child: Transform.translate(
                      offset: const Offset(0,
                          0), // Adjust the Y offset as needed to center the icon
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Product and Services Information',
                    style: GoogleFonts.plusJakartaSans(
                        color: Colors.black,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2, // Number of columns
                crossAxisSpacing: 10.0, // Spacing between columns
                mainAxisSpacing: 10.0,
                childAspectRatio: 0.9, // Spacing between rows
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                          5.0), // Adjust the radius as needed
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
                                padding: const EdgeInsets.only(
                                    top: 15.0, bottom: 15.0),
                                child: SvgPicture.asset(
                                    'assets/custom_icons/box.svg'),
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
                      borderRadius: BorderRadius.circular(
                          5.0), // Adjust the radius as needed
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
                                padding: const EdgeInsets.only(
                                    top: 15.0, bottom: 15.0),
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
                      borderRadius: BorderRadius.circular(
                          5.0), // Adjust the radius as needed
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
                                padding: const EdgeInsets.only(
                                    top: 15.0, bottom: 15.0),
                                child: SvgPicture.asset(
                                    'assets/custom_icons/gift.svg'),
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
                      borderRadius: BorderRadius.circular(
                          5.0), // Adjust the radius as needed
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
                                padding: const EdgeInsets.only(
                                    top: 15.0, bottom: 15.0),
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
            ],
          ),
        ),
      ),
    );
  }
}
