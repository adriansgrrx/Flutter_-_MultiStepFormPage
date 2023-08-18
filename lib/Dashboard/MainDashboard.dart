// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_ledger_ai/Registration/LoginScreen.dart';

class MainDashboardPage extends StatefulWidget {
  const MainDashboardPage({super.key});

  @override
  State<MainDashboardPage> createState() => _MainDashboardPageState();
}

class _MainDashboardPageState extends State<MainDashboardPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              // Add your onPressed logic here
            },
            backgroundColor: const Color(0xFFD9D9D9),
            tooltip: 'Open Android Menu',
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.red,
                  width: 2.0, // Adjust the border width as needed
                ),
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.android,
                  color: Colors.red,
                ),
              ),
            ),
          ),
          backgroundColor: const Color(0xFFFFFBF2),
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
            // leading: Padding(
            //   padding: const EdgeInsets.all(4.0),
            //   child: GestureDetector(
            //     onTap: () {},
            //     child: const Icon(
            //       Icons.menu,
            //       color: Color(0xFF040404),
            //     ),
            //   ),
            // ),
            actions: <Widget>[
              Row(
                children: [
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
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "DASHBOARD",
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: const Color(0xFF1D1D1F),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const LoginScreen()));
                  },
                  child: Container(
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.red, // Red color for the button
                      borderRadius: BorderRadius.circular(
                          5), // Set the border radius value as you desir/e
                    ),
                    child: Center(
                      child: Text(
                        'Back',
                        style: GoogleFonts.plusJakartaSans(
                          color:
                              Colors.white, // Text color (white in this case)
                          fontSize: 16, // Font size of the text
                          fontWeight:
                              FontWeight.bold, // Font weight of the text
                        ),
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
