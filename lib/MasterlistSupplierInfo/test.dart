return MaterialApp(
  home: showAdditionalButton
      ? GestureDetector(
          onTap: () {
            // Close the overlay when tapped outside
            setState(() {
              showAdditionalButton = false;
              fabLabel = 'Add Item';
            });
          },
          child: Container(
            color: Colors.black.withOpacity(0.5), // Semi-transparent black
            child: Scaffold(
              body: YourContentWidget(), // Replace with your content widget
            ),
          ),
        )
      : Scaffold(
          floatingActionButton: Stack(
            children: [
              Positioned(
                bottom: 0,
                right: 0,
                child: Row(
                  children: [
                    Visibility(
                      visible: showAdditionalButton,
                      child: Text(
                        'Add supplier manually',
                        style: GoogleFonts.plusJakartaSans(
                          color: Colors.black,
                          fontSize: 10.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(width: 8.0),
                    FloatingActionButton(
                      onPressed: () {
                        setState(() {
                          showAdditionalButton = !showAdditionalButton;
                          fabLabel = showAdditionalButton ? 'Close' : 'Add Item';
                        });
                      },
                      child: showAdditionalButton
                          ? Icon(Icons.people)
                          : Icon(Icons.add),
                      backgroundColor: const Color(0xFF2C3A76),
                      tooltip: fabLabel,
                    ),
                  ],
                ),
              ),
              if (showAdditionalButton)
                Positioned(
                  top: 560,
                  right: 0,
                  child: Row(
                    children: [
                      Text(
                        'Import Supplier',
                        style: GoogleFonts.plusJakartaSans(
                          color: Colors.black,
                          fontSize: 10.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      FloatingActionButton(
                        onPressed: () {
                          // Handle the additional FAB's onPressed action here
                        },
                        child: Icon(
                          Icons.people,
                          color: Colors.blue,
                        ),
                        backgroundColor: Colors.white,
                        tooltip: 'Additional FAB',
                      ),
                    ],
                  ),
                ),
            ],
          ),
          backgroundColor: const Color(0xFFFFFBF2),
          appBar: AppBar(
            // ... Your app bar code ...
          ),
          body: YourContentWidget(), // Replace with your content widget
          drawer: const NavigationDrawer(),
        ),
);
