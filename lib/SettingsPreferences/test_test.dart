import 'package:flutter/material.dart';

class MultiStepFormPage extends StatefulWidget {
  const MultiStepFormPage({super.key});

  @override
  _MultiStepFormPageState createState() => _MultiStepFormPageState();
}

class _MultiStepFormPageState extends State<MultiStepFormPage> {
  int _currentStep = 0;
  int numSteps = 3; // Total number of steps
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _nextStep() {
    if (_currentStep < numSteps - 1) {
      _pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      setState(() {
        _currentStep++;
      });
    }
  }

  void _previousStep() {
    if (_currentStep > 0) {
      _pageController.previousPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      setState(() {
        _currentStep--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Multi-Step Form'),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              children: [
                // Replace these with your form pages/widgets
                FormPage1(),
                FormPage2(),
                FormPage3(),
                // ...
              ],
            ),
          ),
          Stepper(
            currentStep: _currentStep,
            onStepContinue: _nextStep,
            onStepCancel: _previousStep,
            steps: [
              Step(
                title: Text('Step 1'),
                content: SizedBox.shrink(),
              ),
              Step(
                title: Text('Step 2'),
                content: SizedBox.shrink(),
              ),
              Step(
                title: Text('Step 3'),
                content: SizedBox.shrink(),
              ),
              // ...
            ],
          ),
        ],
      ),
    );
  }
}

class FormPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: Text('Form Page 1'),
      ),
    );
  }
}

class FormPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Center(
        child: Text('Form Page 2'),
      ),
    );
  }
}

class FormPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      child: Center(
        child: Text('Form Page 3'),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MultiStepFormPage(),
  ));
}