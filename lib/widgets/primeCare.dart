import 'package:flutter/material.dart';

class PrimeCareWidget extends StatelessWidget {
  const PrimeCareWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List primeCareServices = [
      'Everything in Basic Care',
      'Pediatric care in 15 minutes, lactation, nutrition, monthly milestones, emergency support',
      '24x7 free pediatrician consultations',
      'Monthly growth and milestones tracking by pediatrician',
      'Lactation and Weaning Support',
    ];
    return Column(
      children: [
        ListView.builder(
          // padding: EdgeInsets.all(10),
          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: primeCareServices.length,
          itemBuilder: (context, index) => ListTile(
            // tileColor: Colors.amber,
            textColor: Colors.white,
            leading:
                const Icon(Icons.check_circle_rounded, color: Colors.white),
            title: Text(
              primeCareServices[index].toString(),
            ),
          ),
        )
      ],
    );
  }
}
