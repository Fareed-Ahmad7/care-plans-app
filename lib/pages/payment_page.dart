import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 21, 35, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            ClipOval(
              child: Material(
                color: Colors.lightGreen,
                child: InkWell(
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Icon(
                      Icons.check_rounded,
                      color: Color.fromRGBO(0, 21, 35, 1),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Payment Successful',
              style: TextStyle(
                color: Colors.lightGreen,
                fontFamily: 'Nunito',
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Thank you !',
              style: TextStyle(
                color: Colors.lightGreen,
                fontFamily: 'Nunito',
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
