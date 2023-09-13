import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  OverlayEntry? _overlayEntry;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Overlay Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Show overlay
            _overlayEntry = _createOverlayEntry();
            Overlay.of(context)?.insert(_overlayEntry!);
          },
          child: Text('Show Overlay'),
        ),
      ),
    );
  }

  OverlayEntry _createOverlayEntry() {
    return OverlayEntry(
      builder: (context) {
        return Stack(
          children: <Widget>[
            Positioned.fill(
              child: Container(
                color: Colors.black.withOpacity(0.7), // Adjust the opacity and color as needed
              ),
            ),
            // You can add additional widgets on top of the overlay here.
          ],
        );
      },
    );
  }
}
