import 'package:flutter/material.dart';

class showresultBmi extends StatefulWidget {
  const showresultBmi({super.key, required this.bmiResult});
  final double bmiResult;
  @override
  State<showresultBmi> createState() => _showresultBmiState();
}

class _showresultBmiState extends State<showresultBmi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "ผลลัพท์BMI: ",
              style: TextStyle(fontSize: 28),
            ),
            SizedBox(
              height: 100,
            ),
            Text(
              "ผลลัพท์ BMI: ${widget.bmiResult.toString()}",
              style: TextStyle(fontSize: 16, color: Colors.blueGrey),
            )
          ],
        ),
      ),
    );
  }
}
