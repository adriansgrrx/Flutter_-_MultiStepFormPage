import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomerInformation extends StatefulWidget {
  const CustomerInformation({super.key});

  @override
  State<CustomerInformation> createState() => _CustomerInformationState();
}

class _CustomerInformationState extends State<CustomerInformation> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xFFFFFBF2),
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
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Juan Dela Cruz',
                          style: GoogleFonts.plusJakartaSans(
                              color: Colors.black,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            'Add Note',
                            style: GoogleFonts.plusJakartaSans(
                              color: const Color(0xFF0094FF),
                              fontSize: 10.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Transform.translate(
                      offset: const Offset(0, -6),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {});
                        },
                        child: Container(
                          width: 96,
                          height: 26,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: const Color(0xFF2C3A76),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'New Customer',
                                style: GoogleFonts.plusJakartaSans(
                                    color: Colors.white,
                                    fontSize: 8.0,
                                    fontWeight: FontWeight.w500),
                              ),
                              Transform.translate(
                                offset: const Offset(6, 0),
                                child: const Icon(
                                  Icons.arrow_drop_down,
                                  size: 20.0,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Table(
                  defaultColumnWidth: const FlexColumnWidth(2.0),
                  border: const TableBorder(
                    verticalInside: BorderSide(
                        width: 0.7,
                        color: Color.fromARGB(
                            255, 123, 127, 131)), // Inner vertical border
                  ),
                  children: [
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 3.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'PHP0.00',
                                style: GoogleFonts.plusJakartaSans(
                                    color: Colors.black,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 3.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'PHP0.00',
                                style: GoogleFonts.plusJakartaSans(
                                    color: Colors.black,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 3.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'PHP0.00',
                                style: GoogleFonts.plusJakartaSans(
                                    color: Colors.black,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 3.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'PHP0.00',
                                style: GoogleFonts.plusJakartaSans(
                                    color: Colors.black,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 3.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'PHP0.00',
                                style: GoogleFonts.plusJakartaSans(
                                    color: Colors.black,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Center(
                            child: Text(
                              'Estimate',
                              style: GoogleFonts.plusJakartaSans(
                                  color: const Color(0xFFFF8A00),
                                  fontSize: 8.0,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Center(
                            child: Text(
                              '0 unbilled\n   Activity',
                              style: GoogleFonts.plusJakartaSans(
                                  color: const Color(0xFFB69D1B),
                                  fontSize: 8.0,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Center(
                            child: Text(
                              '1 overdue',
                              style: GoogleFonts.plusJakartaSans(
                                  color: const Color(0xFF2C3A76),
                                  fontSize: 8.0,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Center(
                            child: Text(
                              '1 open invoice',
                              style: GoogleFonts.plusJakartaSans(
                                  color: const Color(0x80010A10),
                                  fontSize: 8.0,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Center(
                            child: Text(
                              '0 paid last\n   30 days',
                              style: GoogleFonts.plusJakartaSans(
                                  color: const Color(0xFF02C165),
                                  fontSize: 8.0,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 156,
                        height: 24,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              width: 10.0,
                            ),
                            Expanded(
                              child: TextField(
                                style: GoogleFonts.plusJakartaSans(
                                  textStyle: const TextStyle(
                                    color: Colors.grey,
                                    fontSize:
                                        10.0, // Adjust the font size as needed
                                  ),
                                ),
                                decoration: InputDecoration(
                                  hintText: 'Search',
                                  hintStyle: GoogleFonts.plusJakartaSans(
                                    textStyle: const TextStyle(
                                        color: Colors.grey,
                                        fontSize:
                                            10.0, // Adjust the font size as needed
                                        fontWeight: FontWeight.w500),
                                  ),
                                  border: InputBorder.none,
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 11.5),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 5.0),
                              child: Icon(
                                Icons.search,
                                color: Colors.grey,
                                size: 15.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Transform.translate(
                        offset: const Offset(0, 0),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {});
                          },
                          child: Container(
                            width: 96,
                            height: 26,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: const Color(0xFF02C165),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Batch Action',
                                  style: GoogleFonts.plusJakartaSans(
                                      color: Colors.white,
                                      fontSize: 8.0,
                                      fontWeight: FontWeight.w500),
                                ),
                                Transform.translate(
                                  offset: const Offset(6, 0),
                                  child: const Icon(
                                    Icons.arrow_drop_down,
                                    size: 20.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 0.0, bottom: 0.0),
                      child: Table(
                        defaultColumnWidth: const FlexColumnWidth(2.0),
                        border: const TableBorder(
                          verticalInside:
                              BorderSide(width: 1, color: Colors.grey),
                          horizontalInside:
                              BorderSide(width: 1, color: Colors.grey),
                        ),
                        children: [
                          TableRow(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Company/Customer',
                                      style: GoogleFonts.plusJakartaSans(
                                          color: Colors.black,
                                          fontSize: 10.0,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Phone',
                                      style: GoogleFonts.plusJakartaSans(
                                          color: Colors.black,
                                          fontSize: 10.0,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Center(
                                      child: Text(
                                        'Open Balance',
                                        style: GoogleFonts.plusJakartaSans(
                                            color: Colors.black,
                                            fontSize: 10.0,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Action',
                                      style: GoogleFonts.plusJakartaSans(
                                          color: Colors.black,
                                          fontSize: 10.0,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                  child: Text(
                                    'Juan Dela Cruz',
                                    style: GoogleFonts.plusJakartaSans(
                                        color: Colors.black,
                                        fontSize: 8.0,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                  child: Text(
                                    '0912 123 1234',
                                    style: GoogleFonts.plusJakartaSans(
                                        color: Colors.black,
                                        fontSize: 8.0,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                  child: Text(
                                    'P 123.00',
                                    style: GoogleFonts.plusJakartaSans(
                                        color: Colors.black,
                                        fontSize: 8.0,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 96,
                                height: 26,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Create invoice',
                                      style: GoogleFonts.plusJakartaSans(
                                          color: const Color(0xFF0094FF),
                                          fontSize: 8.0,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Transform.translate(
                                      offset: const Offset(0, 0),
                                      child: const Icon(
                                        Icons.arrow_drop_down,
                                        size: 20.0,
                                        color: Color(0xFF0094FF),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                  child: Text(
                                    'Juan Dela Cruz',
                                    style: GoogleFonts.plusJakartaSans(
                                        color: Colors.black,
                                        fontSize: 8.0,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                  child: Text(
                                    '0912 123 1234',
                                    style: GoogleFonts.plusJakartaSans(
                                        color: Colors.black,
                                        fontSize: 8.0,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                  child: Text(
                                    'P 123.00',
                                    style: GoogleFonts.plusJakartaSans(
                                        color: Colors.black,
                                        fontSize: 8.0,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 96,
                                height: 26,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Received\npayment',
                                      style: GoogleFonts.plusJakartaSans(
                                          color: const Color(0xFF0094FF),
                                          fontSize: 8.0,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Transform.translate(
                                      offset: const Offset(0, 0),
                                      child: const Icon(
                                        Icons.arrow_drop_down,
                                        size: 20.0,
                                        color: Color(0xFF0094FF),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          drawer: const NavigationDrawer(),
        ),
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
