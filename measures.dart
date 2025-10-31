import 'package:flutter/material.dart';

class MeasuresScreen extends StatefulWidget {
  const MeasuresScreen({super.key});
  @override
  State<MeasuresScreen> createState() => _MeasureScreenState();
}

class _MeasureScreenState extends State<MeasuresScreen> {
  double height = 170;
  double weight = 65; // start kg

  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1930, 8),
        lastDate: DateTime(2026));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Stack(
          children: [
            // Back button at the top-left
            Positioned(
              top: 24,
              left: 0,
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back),
                color: Colors.white,
                iconSize: 22,
              ),
            ),

            // Centered content
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "What is your weight?",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w100,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),

                  Slider(
                    value: weight,
                    min: 40,
                    max: 150,
                    divisions: 120,
                    activeColor: Colors.blue,
                    inactiveColor: const Color(0xFF3A3A3A),
                    label: "${weight.round()} kg",
                    onChanged: (value) {
                      setState(() {
                        weight = value;
                      });
                    },
                  ),

                  const SizedBox(height: 20),

                  const Text(
                    "What is your height?",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w100,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),

                  Slider(
                    value: height,
                    min: 100,
                    max: 210,
                    divisions: 120,
                    activeColor: Colors.blue,
                    inactiveColor: const Color(0xFF3A3A3A),
                    label: "${height.round()} cm",
                    onChanged: (value) {
                      setState(() {
                        height = value;
                      });
                    },
                  ),

                  const Text(
                    "What is your date of birth?",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w100,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),


                  Text("${selectedDate.toLocal()}".split(' ')[0]),

                  SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: ElevatedButton(
                        child:
                        const Text(
                          'Select date',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w100,
                            color: Colors.white,
                          ),
                      ),
                      onPressed: () => _selectDate(context),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF2A2A2A),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                        
                        ),
                      ),
                    ),
                  ),
                  

                  const SizedBox(height: 20),

                  SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MeasuresScreen(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF2A2A2A),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      child: const Text(
                        'Continue',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
