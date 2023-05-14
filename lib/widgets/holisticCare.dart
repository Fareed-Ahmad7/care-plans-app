import 'package:flutter/material.dart';

class HolisticCareWidget extends StatelessWidget {
  const HolisticCareWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List holisticCareServices = [
      'Everything included in the PRIME Plan',
      'Dedicated pediatrician for your baby, personal care plan, Best possible baby care',
      'Dedicated pediatrician just for your baby',
      'Personalized care plan for your baby and you',
      'All Consultations and workshops free*',
      'We keep adding new services to provide more value to you',
    ];
    return Column(
      children: [
        ListView.builder(
          // padding: EdgeInsets.all(10),
          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: holisticCareServices.length,
          itemBuilder: (context, index) => ListTile(
            // tileColor: Colors.amber,
            // isThreeLine: false,
            textColor: Colors.white,
            leading:
                const Icon(Icons.check_circle_rounded, color: Colors.white),
            title: Text(
              holisticCareServices[index].toString(),
            ),
          ),
        )
      ],
    );
  }
}
