import 'package:flutter/material.dart';
import 'package:workshop_1_bmi/pages/showresultBmipage.dart';

class formBmipage extends StatefulWidget {
  const formBmipage({super.key});

  @override
  State<formBmipage> createState() => _formBmipageState();
}

TextEditingController weightController = TextEditingController();
TextEditingController heightController = TextEditingController();
double bmiResult = 0.0;
double bmiResultfinal = 0.0;

class _formBmipageState extends State<formBmipage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bmi"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "กรุณากรอก ข้อมูลของคุณ",
              style: TextStyle(fontSize: 30),
            ),
            TextField(
              controller: weightController,
              decoration: const InputDecoration(labelText: "น้ำหนักตัว(kg.)"),
            ),
            TextField(
              controller: heightController,
              decoration: const InputDecoration(labelText: "ส่วนสูง(cm.)"),
            ),
            ElevatedButton(
              onPressed: () {
                double bmiResultfinal = calBmi();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => showresultBmi(
                        bmiResult: bmiResultfinal,
                      ),
                    ));
              },
              child: const Text("คำนวณ"),
            ),
          ],
        ),
      ),
    );
  }
}

double calBmi() {
  double? height = double.tryParse(heightController.text);
  double? weight = double.tryParse(weightController.text);

  if (height != null && weight != null && height > 0 && weight > 0) {
    double heightInMeter = height / 100;
    bmiResult = weight / (heightInMeter * heightInMeter);
  } else {
    bmiResult = 0.0;
  }

  return bmiResult;
}
