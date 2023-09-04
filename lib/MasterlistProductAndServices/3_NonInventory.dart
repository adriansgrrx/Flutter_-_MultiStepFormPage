import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smart_ledger_ai/MasterlistProductAndServices/1_ProductNServicesDashboard.dart';
import 'package:smart_ledger_ai/MasterlistProductAndServices/2_ProductNServicesChoices.dart';

class NonInventory extends StatefulWidget {
  const NonInventory({super.key});

  @override
  State<NonInventory> createState() => _NonInventory();
}

class _NonInventory extends State<NonInventory> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFFFFBF2),
        body: Padding(
          padding: const EdgeInsets.only(
              top: 15.0, bottom: 0.0, left: 15.0, right: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const ProductNServicesChoices();
                      },
                    ),
                  );
                },
                child: Container(
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
              ),
              const SizedBox(
                height: 40,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      'Non-inventory',
                      style: GoogleFonts.plusJakartaSans(
                          color: Colors.black,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(
                            color: const Color(0x80010A10), width: 0.5),
                      ),
                      child: const Icon(
                        Icons.image_outlined,
                        color: Color(0x80010A10),
                        size: 50,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: Row(
                              children: [
                                Text(
                                  'Name',
                                  style: GoogleFonts.plusJakartaSans(
                                    color: const Color(0xFF010A10),
                                    fontSize: 10.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border:
                                  Border.all(color: const Color(0x1a010a10)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: TextField(
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 10),
                              ),
                              onChanged: (String value) {
                                // Handle input changes
                              },
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: Row(
                              children: [
                                Text(
                                  'SKU',
                                  style: GoogleFonts.plusJakartaSans(
                                    color: const Color(0xFF010A10),
                                    fontSize: 10.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border:
                                  Border.all(color: const Color(0x1a010a10)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: TextField(
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 10),
                              ),
                              onChanged: (String value) {
                                // Handle input changes
                              },
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: Row(
                              children: [
                                Text(
                                  'Category',
                                  style: GoogleFonts.plusJakartaSans(
                                    color: const Color(0xFF010A10),
                                    fontSize: 10.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border:
                                  Border.all(color: const Color(0x1a010a10)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: DropdownButton<String>(
                              isExpanded: true,
                              hint: Text(
                                'Choose a category',
                                style: GoogleFonts.plusJakartaSans(
                                  color: Color.fromARGB(77, 1, 10, 16),
                                  fontSize: 10.0,
                                ),
                              ),
                              underline: Container(),
                              icon: const Icon(Icons.arrow_drop_down,
                                  color: Color(0x1a010a10)),
                              items: <String>[
                                'Option 1',
                                'Option 2',
                                'Option 3',
                                'Option 4',
                              ].map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Row(
                                    children: [
                                      const SizedBox(width: 10),
                                      Text(value),
                                    ],
                                  ),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                // Handle selection
                              },
                            ),
                          ),
                          Row(
                            children: [
                              Checkbox(
                                value: isChecked,
                                onChanged: (bool? newValue) {
                                  setState(() {
                                    isChecked = newValue ?? false;
                                  });
                                },
                              ),
                              Text(
                                'I sell this product/service to my customers.',
                                style: GoogleFonts.plusJakartaSans(
                                  color: const Color(0xFF010A10),
                                  fontSize: 10.0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: Row(
                              children: [
                                Text(
                                  'Description',
                                  style: GoogleFonts.plusJakartaSans(
                                    color: const Color(0xFF010A10),
                                    fontSize: 10.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 70,
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border:
                                  Border.all(color: const Color(0x1a010a10)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                hintText: 'Description on sales form',
                                hintStyle: GoogleFonts.plusJakartaSans(
                                  textStyle: const TextStyle(
                                      color: Colors.grey,
                                      fontSize:
                                          10.0, // Adjust the font size as needed
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                              onChanged: (String value) {
                                // Handle input changes
                              },
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: Row(
                              children: [
                                Text(
                                  'Sales/Price rate',
                                  style: GoogleFonts.plusJakartaSans(
                                    color: const Color(0xFF010A10),
                                    fontSize: 10.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border:
                                  Border.all(color: const Color(0x1a010a10)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: TextField(
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 10),
                              ),
                              onChanged: (String value) {
                                // Handle input changes
                              },
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: Row(
                              children: [
                                Text(
                                  'Income Account',
                                  style: GoogleFonts.plusJakartaSans(
                                    color: const Color(0xFF010A10),
                                    fontSize: 10.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border:
                                  Border.all(color: const Color(0x1a010a10)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: TextField(
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 10),
                              ),
                              onChanged: (String value) {
                                // Handle input changes
                              },
                            ),
                          ),
                          Row(
                            children: [
                              Checkbox(
                                value: isChecked,
                                onChanged: (bool? newValue) {
                                  setState(() {
                                    isChecked = newValue ?? false;
                                  });
                                },
                              ),
                              Text(
                                'I purchase this product/service from a supplier.',
                                style: GoogleFonts.plusJakartaSans(
                                  color: const Color(0xFF010A10),
                                  fontSize: 10.0,
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
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 0.0, vertical: 20.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle button press
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(80, 27),
                      backgroundColor:
                          const Color(0xFF2C3A76), // Change button color
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(7.0), // Adjust the radius
                      ),
                    ),
                    child: Text(
                      'Save',
                      style: GoogleFonts.plusJakartaSans(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 10.0,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
