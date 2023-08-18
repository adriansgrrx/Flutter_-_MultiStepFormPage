import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DefaultSettingsBackup1 extends StatelessWidget {
  const DefaultSettingsBackup1({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          title: Row(
            children: [
              Text(
                'Box',
                style: GoogleFonts.plusJakartaSans(
                  color: const Color(0xFF040404),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'ERP',
                style: GoogleFonts.plusJakartaSans(
                  color: const Color(0xFF2C3A76),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Container(
                width: 100,
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
                  icon: const Icon(
                    Icons.arrow_drop_down,
                    color: Colors.white,
                  ),
                  hint: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      'Categories',
                      style: GoogleFonts.plusJakartaSans(
                        color: Colors.white,
                        fontSize: 10.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Container(
                width: 100,
                height: 10,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                    bottomLeft: Radius.circular(20.0),
                  ),
                ),
                child: const Row(
                  children: [
                    Expanded(
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.white),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0), // Add spacing before the search icon
                    Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 16.0,
                    ),
                    SizedBox(
                        width:
                            5.0), // Add spacing between the search icon and text field
                    SizedBox(width: 10.0), // Add spacing after the text field
                  ],
                ),
              ),
            ),
          ],
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(30.0),
            child: TabBar(
              indicatorColor: Color(0xFF2C3A76),
              labelColor: Colors.black,
              unselectedLabelColor: Colors.black,
              tabs: [
                Padding(
                  padding: EdgeInsets.only(bottom: 8.0, top: 8.0),
                  child: Text(
                    'Default Accounts',
                    style: TextStyle(
                        color: Color(0xFF010a10),
                        fontSize: 10.0,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 8.0, top: 8.0),
                  child: Text(
                    'Custom Reports',
                    style: TextStyle(
                        color: Color(0xFF010a10),
                        fontSize: 10.0,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 8.0, top: 8.0),
                  child: Text(
                    'Management Reports',
                    style: TextStyle(
                        color: Color(0xFF010a10),
                        fontSize: 10.0,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: TabBarView(
          children: [
            // Content of Tab 1
            Center(
                child: Column(
              children: [
                Expanded(
                  child: GestureDetector(
                    onVerticalDragUpdate: (details) {
                      // Handle vertical drag to simulate scrolling
                    },
                    child: Container(
                      constraints: BoxConstraints(
                        minHeight: MediaQuery.of(context).size.height -
                            100.0, // Minimum height
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            // Scrollable content
                            SizedBox(
                              height: 620.0, // Example content height
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 25.0, left: 25.0, right: 25.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 10.0),
                                          child: Row(
                                            children: [
                                              Text(
                                                'Date',
                                                style:
                                                    GoogleFonts.plusJakartaSans(
                                                  color:
                                                      const Color(0xFF010A10),
                                                  fontSize: 10.0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: 150,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                                color: const Color(0x1a010a10)),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: DropdownButton<String>(
                                            isExpanded: true,
                                            underline: Container(),
                                            icon: const Icon(
                                                Icons.arrow_drop_down,
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
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10.0, left: 25.0, right: 25.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 10.0),
                                          child: Row(
                                            children: [
                                              Text(
                                                'Accounts Payable',
                                                style:
                                                    GoogleFonts.plusJakartaSans(
                                                  color:
                                                      const Color(0xFF010A10),
                                                  fontSize: 10.0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                                color: const Color(0x1a010a10)),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: DropdownButton<String>(
                                            isExpanded: true,
                                            underline: Container(),
                                            icon: const Icon(
                                                Icons.arrow_drop_down,
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
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10.0, left: 25.0, right: 25.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 10.0),
                                          child: Row(
                                            children: [
                                              Text(
                                                'Accounts Receivable',
                                                style:
                                                    GoogleFonts.plusJakartaSans(
                                                  color:
                                                      const Color(0xFF010A10),
                                                  fontSize: 10.0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                                color: const Color(0x1a010a10)),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: DropdownButton<String>(
                                            isExpanded: true,
                                            underline: Container(),
                                            icon: const Icon(
                                                Icons.arrow_drop_down,
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
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10.0, left: 25.0, right: 25.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 10.0),
                                          child: Row(
                                            children: [
                                              Text(
                                                'Employee Advance',
                                                style:
                                                    GoogleFonts.plusJakartaSans(
                                                  color:
                                                      const Color(0xFF010A10),
                                                  fontSize: 10.0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                                color: const Color(0x1a010a10)),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: DropdownButton<String>(
                                            isExpanded: true,
                                            underline: Container(),
                                            icon: const Icon(
                                                Icons.arrow_drop_down,
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
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10.0, left: 25.0, right: 25.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 10.0),
                                          child: Row(
                                            children: [
                                              Text(
                                                'Petty Cash',
                                                style:
                                                    GoogleFonts.plusJakartaSans(
                                                  color:
                                                      const Color(0xFF010A10),
                                                  fontSize: 10.0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                                color: const Color(0x1a010a10)),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: DropdownButton<String>(
                                            isExpanded: true,
                                            underline: Container(),
                                            icon: const Icon(
                                                Icons.arrow_drop_down,
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
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10.0, left: 25.0, right: 25.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 10.0),
                                          child: Row(
                                            children: [
                                              Text(
                                                'Default Bank',
                                                style:
                                                    GoogleFonts.plusJakartaSans(
                                                  color:
                                                      const Color(0xFF010A10),
                                                  fontSize: 10.0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                                color: const Color(0x1a010a10)),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: DropdownButton<String>(
                                            isExpanded: true,
                                            underline: Container(),
                                            icon: const Icon(
                                                Icons.arrow_drop_down,
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
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10.0, left: 25.0, right: 25.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 10.0),
                                          child: Row(
                                            children: [
                                              Text(
                                                'Deffered Purchase',
                                                style:
                                                    GoogleFonts.plusJakartaSans(
                                                  color:
                                                      const Color(0xFF010A10),
                                                  fontSize: 10.0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                                color: const Color(0x1a010a10)),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: DropdownButton<String>(
                                            isExpanded: true,
                                            underline: Container(),
                                            icon: const Icon(
                                                Icons.arrow_drop_down,
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
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 27.0, vertical: 37.0),
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle button press
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(72, 28),
                        backgroundColor:
                            const Color(0xFF2C3A76), // Change button color
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
            )),

            // Content of Tab 2
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 25.0, left: 25.0, right: 25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Row(
                            children: [
                              Text(
                                'Accounting Period',
                                style: GoogleFonts.plusJakartaSans(
                                  color: const Color(0xFF010A10),
                                  fontSize: 10.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: const Color(0x1a010a10)),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 10),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0, left: 25.0, right: 25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Row(
                            children: [
                              Text(
                                'Fiscal Month End',
                                style: GoogleFonts.plusJakartaSans(
                                  color: const Color(0xFF010A10),
                                  fontSize: 10.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: const Color(0x1a010a10)),
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
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0, left: 25.0, right: 25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Row(
                            children: [
                              Text(
                                'Primary Revenue Type',
                                style: GoogleFonts.plusJakartaSans(
                                  color: const Color(0xFF010A10),
                                  fontSize: 10.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: const Color(0x1a010a10)),
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
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0, left: 25.0, right: 25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Row(
                            children: [
                              Text(
                                'VAT ATC',
                                style: GoogleFonts.plusJakartaSans(
                                  color: const Color(0xFF010A10),
                                  fontSize: 10.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: const Color(0x1a010a10)),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: DropdownButton<String>(
                            isExpanded: true,
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
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Content of Tab 3
            Center(
                child: Column(
              children: [
                Expanded(
                  child: GestureDetector(
                    onVerticalDragUpdate: (details) {
                      // Handle vertical drag to simulate scrolling
                    },
                    child: Container(
                      constraints: BoxConstraints(
                        minHeight: MediaQuery.of(context).size.height -
                            100.0, // Minimum height
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            // Scrollable content
                            SizedBox(
                              height: 620.0, // Example content height
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 15.0, left: 25.0, right: 25.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          'VAT',
                                          style: GoogleFonts.plusJakartaSans(
                                              color: const Color(0xFF010A10),
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'PHP 0.00',
                                          style: GoogleFonts.plusJakartaSans(
                                              color: const Color(0xFF010A10),
                                              fontSize: 24.0,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 25.0, left: 25.0, right: 25.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 10.0),
                                          child: Row(
                                            children: [
                                              Text(
                                                'Input VAT',
                                                style:
                                                    GoogleFonts.plusJakartaSans(
                                                  color:
                                                      const Color(0xFF010A10),
                                                  fontSize: 10.0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                                color: const Color(0x1a010a10)),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: DropdownButton<String>(
                                            isExpanded: true,
                                            underline: Container(),
                                            icon: const Icon(
                                                Icons.arrow_drop_down,
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
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10.0, left: 25.0, right: 25.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 10.0),
                                          child: Row(
                                            children: [
                                              Text(
                                                'Output VAT',
                                                style:
                                                    GoogleFonts.plusJakartaSans(
                                                  color:
                                                      const Color(0xFF010A10),
                                                  fontSize: 10.0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                                color: const Color(0x1a010a10)),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: DropdownButton<String>(
                                            isExpanded: true,
                                            underline: Container(),
                                            icon: const Icon(
                                                Icons.arrow_drop_down,
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
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10.0, left: 25.0, right: 25.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 10.0),
                                          child: Row(
                                            children: [
                                              Text(
                                                'Vat Payable',
                                                style:
                                                    GoogleFonts.plusJakartaSans(
                                                  color:
                                                      const Color(0xFF010A10),
                                                  fontSize: 10.0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                                color: const Color(0x1a010a10)),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: DropdownButton<String>(
                                            isExpanded: true,
                                            underline: Container(),
                                            icon: const Icon(
                                                Icons.arrow_drop_down,
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
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10.0, left: 25.0, right: 25.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 10.0),
                                          child: Row(
                                            children: [
                                              Text(
                                                'Excess Input Over Output',
                                                style:
                                                    GoogleFonts.plusJakartaSans(
                                                  color:
                                                      const Color(0xFF010A10),
                                                  fontSize: 10.0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                                color: const Color(0x1a010a10)),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: DropdownButton<String>(
                                            isExpanded: true,
                                            underline: Container(),
                                            icon: const Icon(
                                                Icons.arrow_drop_down,
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
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10.0, left: 25.0, right: 25.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 10.0),
                                          child: Row(
                                            children: [
                                              Text(
                                                'Deffered Output Tax',
                                                style:
                                                    GoogleFonts.plusJakartaSans(
                                                  color:
                                                      const Color(0xFF010A10),
                                                  fontSize: 10.0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                                color: const Color(0x1a010a10)),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: DropdownButton<String>(
                                            isExpanded: true,
                                            underline: Container(),
                                            icon: const Icon(
                                                Icons.arrow_drop_down,
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
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10.0, left: 25.0, right: 25.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 10.0),
                                          child: Row(
                                            children: [
                                              Text(
                                                'Deffered Input Tax',
                                                style:
                                                    GoogleFonts.plusJakartaSans(
                                                  color:
                                                      const Color(0xFF010A10),
                                                  fontSize: 10.0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                                color: const Color(0x1a010a10)),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: DropdownButton<String>(
                                            isExpanded: true,
                                            underline: Container(),
                                            icon: const Icon(
                                                Icons.arrow_drop_down,
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
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 27.0, vertical: 37.0),
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle button press
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(72, 28),
                        backgroundColor:
                            const Color(0xFF2C3A76), // Change button color
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
            )),
          ],
        ),
        drawer: const NavigationDrawer(),
      ),
    );
  }
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xFF2C3A76),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            radius: 30,
                            // backgroundImage: AssetImage(
                            //     'assets/profile_image.png'), // Add your profile image asset here
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Maria Dela Cruz',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Admin',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home_outlined),
                title: const Text('Dashboard'),
                onTap: () {
                  // Handle home tap
                },
              ),
              ExpansionTile(
                title: const Text("Masterlist"),
                leading:
                    const Icon(Icons.insert_chart_outlined_rounded), // add icon
                childrenPadding: const EdgeInsets.only(left: 90),
                trailing: const Icon(
                    Icons.keyboard_arrow_right), // add expansion/collapse icon
                initiallyExpanded: false, // children padding
                children: [
                  ListTile(
                    title: const Text("Customer Information"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Supplier Information"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Employee"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Bank Accounts"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Char of Accounts"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Product and Services"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Cost centers"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Currency"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  // more child menu
                ], // set to true if you want the tile to be initially expanded
              ),
              ExpansionTile(
                title: const Text("Sales"),

                leading: const Icon(Icons.auto_graph_rounded), // add icon
                childrenPadding: const EdgeInsets.only(left: 90),
                trailing: const Icon(
                    Icons.keyboard_arrow_right), // add expansion/collapse icon
                initiallyExpanded: false, // children padding
                children: [
                  ListTile(
                    title: const Text("Sales Order"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Invoice"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Sales Receipt"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Credit Note"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Refund Receipt"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Statement of Account"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Delivery Receipt"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Backload"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  // more child menu
                ], // set to true if you want the tile to be initially expanded
              ),
              ExpansionTile(
                title: const Text("Purchase"),
                leading: const Icon(Icons.shopping_bag_outlined), // add icon
                childrenPadding: const EdgeInsets.only(left: 90),
                trailing: const Icon(
                    Icons.keyboard_arrow_right), // add expansion/collapse icon
                initiallyExpanded: false, // children padding
                children: [
                  ListTile(
                    title: const Text("APV"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Check Voucher"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Petty Cash"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Liquidation"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Prepayments"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Advance Payment"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  // more child menu
                ], // set to true if you want the tile to be initially expanded
              ),
              ExpansionTile(
                title: const Text("Inventory"),
                leading: const Icon(Icons.book_outlined), // add icon
                childrenPadding: const EdgeInsets.only(left: 90),
                trailing: const Icon(
                    Icons.keyboard_arrow_right), // add expansion/collapse icon
                initiallyExpanded: false, // children padding
                children: [
                  ListTile(
                    title: const Text("Purchase Order"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Material Receiving"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Inventory Quantity Adjustments"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Inventory Tracker"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Asset Management"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Prepayments"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Depraciation Schedule"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  // more child menu
                ], // set to true if you want the tile to be initially expanded
              ),
              ExpansionTile(
                title: const Text("Banking"),
                leading: const Icon(Icons.receipt_long_rounded), // add icon
                childrenPadding: const EdgeInsets.only(left: 90),
                trailing: const Icon(
                    Icons.keyboard_arrow_right), // add expansion/collapse icon
                initiallyExpanded: false, // children padding
                children: [
                  ListTile(
                    title: const Text("Cash Transfer (Deposit)"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Bank Reconcilliations"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Check Release"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  // more child menu
                ], // set to true if you want the tile to be initially expanded
              ),

              ListTile(
                leading: const Icon(Icons.travel_explore),
                title: const Text('Journey Entry'),
                onTap: () {
                  // Handle home tap
                },
              ),
              ListTile(
                leading: const Icon(Icons.bar_chart_rounded),
                title: const Text('Reports'),
                onTap: () {
                  // Handle settings tap
                },
              ),
              const Divider(
                thickness: 2,
              ),
              ExpansionTile(
                title: const Text("Settings"),
                leading: const Icon(Icons.settings), // add icon
                childrenPadding: const EdgeInsets.only(left: 90),
                trailing: const Icon(
                    Icons.keyboard_arrow_right), // add expansion/collapse icon
                initiallyExpanded: false, // children padding
                children: [
                  ListTile(
                    title: const Text("Company Information"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Preferences"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Setup Wizard"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Beginning Balance"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Approver Settings"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("System User"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Manage Subscription"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  // more child menu
                ], // set to true if you want the tile to be initially expanded
              ),

              // Add more list tiles for other options if needed
            ],
          ),
        ),
      );
}
