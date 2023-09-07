import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_ledger_ai/MasterlistProductAndServices/2_ProductNServicesChoices.dart';

class Bundle extends StatefulWidget {
  const Bundle({super.key});

  @override
  State<Bundle> createState() => _Bundle();
}

class _Bundle extends State<Bundle> {
  bool isChecked = false;
  final int pageCount = 2; // Total number of pages
  int currentIndex = 0;
  final PageController _pageController = PageController();

  List<Widget> pageContents = [
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 40,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Bundle',
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
                  border:
                      Border.all(color: const Color(0x80010A10), width: 0.5),
                ),
                child: const Icon(
                  Icons.image_outlined,
                  color: Color(0x80010A10),
                  size: 50,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
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
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: const Color(0x1a010a10)),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: TextField(
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
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
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: const Color(0x1a010a10)),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: TextField(
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
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
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: const Color(0x1a010a10)),
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
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            // setState(() {
                            //   isChecked = !isChecked;
                            // });
                          },
                          child: Container(
                            width: 15.0,
                            height: 15.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color:
                                  // isChecked
                                  //     ? Colors.blue
                                  //     :
                                  const Color(0xFFD9D9D9),
                            ),
                            //   child: isChecked
                            //       ? const Icon(
                            //           Icons.check,
                            //           color: Colors.white,
                            //           size: 10,
                            //         )
                            //       : null,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
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
                    const SizedBox(
                      height: 20,
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
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: const Color(0x1a010a10)),
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
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: const Color(0x1a010a10)),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: TextField(
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
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
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: const Color(0x1a010a10)),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: TextField(
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        ),
                        onChanged: (String value) {
                          // Handle input changes
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            // setState(() {
                            //   isChecked = !isChecked;
                            // });
                          },
                          child: Container(
                            width: 15.0,
                            height: 15.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color:
                                  // isChecked
                                  //     ? Colors.blue
                                  //     :
                                  const Color(0xFFD9D9D9),
                            ),
                            //   child: isChecked
                            //       ? const Icon(
                            //           Icons.check,
                            //           color: Colors.white,
                            //           size: 10,
                            //         )
                            //       : null,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
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
      ],
    ),

    // *********************************************************************************************

    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Bundle',
                style: GoogleFonts.plusJakartaSans(
                    color: Colors.black,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 40,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Card(
            elevation: 0.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: DataTable(
              columnSpacing: 0.0,
              dataRowHeight: 50.0,
              border: const TableBorder(
                horizontalInside: BorderSide(
                    width: 0.7, color: Colors.grey), // Inner horizontal border
                verticalInside: BorderSide(
                    width: 0.7, color: Colors.grey), // Inner vertical border
              ),
              columns: [
                DataColumn(
                  label: SizedBox(
                    width: 20.0,
                    child: Text(
                      '#',
                      style: GoogleFonts.plusJakartaSans(
                          color: Colors.black,
                          fontSize: 8.0,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                DataColumn(
                  label: SizedBox(
                    width: 80.0,
                    child: Center(
                      child: Text(
                        'Product/Service',
                        style: GoogleFonts.plusJakartaSans(
                            color: Colors.black,
                            fontSize: 8.0,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
                DataColumn(
                  label: SizedBox(
                    width: 80.0,
                    child: Center(
                      child: Text(
                        'Description',
                        style: GoogleFonts.plusJakartaSans(
                            color: Colors.black,
                            fontSize: 8.0,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
                DataColumn(
                  label: SizedBox(
                    width: 80.0,
                    child: Center(
                      child: Text(
                        'Quantity',
                        style: GoogleFonts.plusJakartaSans(
                            color: Colors.black,
                            fontSize: 8.0,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
                DataColumn(
                  label: SizedBox(
                    width: 80.0,
                    child: Center(
                      child: Text(
                        'Rate',
                        style: GoogleFonts.plusJakartaSans(
                            color: Colors.black,
                            fontSize: 8.0,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
                DataColumn(
                  label: SizedBox(
                    width: 80.0,
                    child: Center(
                      child: Text(
                        'Amount',
                        style: GoogleFonts.plusJakartaSans(
                            color: Colors.black,
                            fontSize: 8.0,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
                DataColumn(
                  label: SizedBox(
                    width: 80.0,
                    child: Center(
                      child: Text(
                        '',
                        style: GoogleFonts.plusJakartaSans(
                            color: Colors.black,
                            fontSize: 8.0,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
              ],
              rows: [
                DataRow(
                  cells: [
                    DataCell(
                      Text(
                        '1',
                        style: GoogleFonts.plusJakartaSans(
                            color: Colors.black,
                            fontSize: 8.0,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    DataCell(
                      Text(
                        '',
                        style: GoogleFonts.plusJakartaSans(
                            color: Colors.black,
                            fontSize: 8.0,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    DataCell(
                      Text(
                        '',
                        style: GoogleFonts.plusJakartaSans(
                            color: Colors.black,
                            fontSize: 8.0,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    DataCell(
                      Text(
                        '',
                        style: GoogleFonts.plusJakartaSans(
                            color: Colors.black,
                            fontSize: 8.0,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    DataCell(
                      Text(
                        '',
                        style: GoogleFonts.plusJakartaSans(
                            color: Colors.black,
                            fontSize: 8.0,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    DataCell(
                      Text(
                        '',
                        style: GoogleFonts.plusJakartaSans(
                            color: Colors.black,
                            fontSize: 8.0,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    DataCell(
                      Text(
                        '',
                        style: GoogleFonts.plusJakartaSans(
                            color: Colors.black,
                            fontSize: 8.0,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      Text(
                        '2',
                        style: GoogleFonts.plusJakartaSans(
                            color: Colors.black,
                            fontSize: 8.0,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    DataCell(
                      Text(
                        '',
                        style: GoogleFonts.plusJakartaSans(
                            color: Colors.black,
                            fontSize: 8.0,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    DataCell(
                      Text(
                        '',
                        style: GoogleFonts.plusJakartaSans(
                            color: Colors.black,
                            fontSize: 8.0,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    DataCell(
                      Text(
                        '',
                        style: GoogleFonts.plusJakartaSans(
                            color: Colors.black,
                            fontSize: 8.0,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    DataCell(
                      Text(
                        '',
                        style: GoogleFonts.plusJakartaSans(
                            color: Colors.black,
                            fontSize: 8.0,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    DataCell(
                      Text(
                        '',
                        style: GoogleFonts.plusJakartaSans(
                            color: Colors.black,
                            fontSize: 8.0,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    DataCell(
                      Text(
                        '',
                        style: GoogleFonts.plusJakartaSans(
                            color: Colors.black,
                            fontSize: 8.0,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Row(
          children: [
            const SizedBox(
              width: 20.0,
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                'Add lines',
                style: GoogleFonts.plusJakartaSans(
                    color: const Color(0xFF0094FF),
                    fontSize: 10.0,
                    fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              width: 20.0,
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                'Clear all lines',
                style: GoogleFonts.plusJakartaSans(
                    color: const Color(0xFF0094FF),
                    fontSize: 10.0,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ],
    ),
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
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFFFFBF2),
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
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
                height: 20,
              ),
              SizedBox(
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
              Expanded(
                child: PageView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: _pageController,
                  itemCount: pageCount,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Expanded(child: pageContents[index]),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 20.0, bottom: 20.0),
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                if (index > 0)
                                  ElevatedButton(
                                    onPressed: () {
                                      goToPage(index - 1);
                                      _pageController.animateToPage(
                                        currentIndex,
                                        duration: Duration(milliseconds: 300),
                                        curve: Curves.easeInOut,
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      fixedSize: const Size(80, 27),
                                      backgroundColor: const Color(
                                          0xFF2C3A76), // Change button color
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            7.0), // Adjust the radius
                                      ),
                                    ),
                                    child: Text(
                                      'Back',
                                      style: GoogleFonts.plusJakartaSans(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ),
                                const SizedBox(width: 10),
                                if (index < pageCount)
                                  ElevatedButton(
                                    onPressed: () {
                                      if (currentIndex == pageCount - 1) {
                                        // Handle the Save action when on the last page
                                        // For example, call a save method here
                                        // Replace this with your actual save logic
                                      } else {
                                        goToPage(index + 1);
                                        _pageController.animateToPage(
                                          currentIndex,
                                          duration:
                                              const Duration(milliseconds: 300),
                                          curve: Curves.easeInOut,
                                        );
                                      }
                                    },
                                    style: ElevatedButton.styleFrom(
                                      fixedSize: const Size(80, 27),
                                      backgroundColor: const Color(
                                          0xFF2C3A76), // Change button color
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            7.0), // Adjust the radius
                                      ),
                                    ),
                                    child: Text(
                                      index == pageCount - 1
                                          ? 'Save'
                                          : 'Next', // Conditionally change the button text
                                      style: GoogleFonts.plusJakartaSans(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
