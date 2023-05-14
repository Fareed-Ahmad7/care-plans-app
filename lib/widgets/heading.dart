import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  const Heading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 64, 0, 16),
          // padding: EdgeInsets.all(64),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Babynama Care Plans',
                style: TextStyle(
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  letterSpacing: 1,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'Choose the best care plan for your baby ',
                style: TextStyle(
                  fontFamily: 'Nunito',
                  // fontWeight: FontWeight.bold,
                  // fontSize: 16,
                  letterSpacing: .4,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
