import 'package:care_plans/widgets/basic_care.dart';
import 'package:care_plans/widgets/holistic_care.dart';
import 'package:care_plans/widgets/prime_care.dart';
import 'package:flutter/material.dart';

class CarePlans extends StatefulWidget {
  const CarePlans({
    super.key,
  });

  @override
  State<CarePlans> createState() => _CarePlansState();
}

class _CarePlansState extends State<CarePlans> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    List carePlanOptions = ['Basic Care', 'Prime Care', 'Holistic Care'];
    List<Widget> carePlanOptionsWidgets = [
      const BasicCareWidget(),
      const PrimeCareWidget(),
      const HolisticCareWidget()
    ];
    return Column(
      children: [
        Container(
          // padding: EdgeInsets.all(1),
          // color: Colors.amber,
          margin: const EdgeInsets.symmetric(vertical: 20.0 / 2),
          height: 30.0,
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            // shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: carePlanOptions.length,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                setState(() {
                  // print(index);
                  selectedIndex = index;
                });
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                  left: 14.0,
                  right: index == carePlanOptions.length - 1 ? 20.0 : 0,
                ),
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  color: index == selectedIndex
                      // ? const Color.fromRGBO(142, 202, 230, 1).withOpacity(0.6)
                      ? const Color.fromRGBO(26, 117, 159, 0.5)
                      // ? const Color.fromRGBO(189, 224, 254, 0.3)
                      // ? const Color.fromRGBO(142, 202, 230, 1).withOpacity(0.2)
                      // ? Colors.grey.withOpacity(0.2)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  carePlanOptions[index].toString(),
                  style: const TextStyle(
                      // color: index == selectedIndex
                      //     ? Color.fromRGBO(236, 238, 240, 1)
                      //     : Colors.white,
                      color: Colors.white,
                      fontFamily: 'Nunito',
                      letterSpacing: .5,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
        carePlanOptionsWidgets[selectedIndex],
      ],
    );
  }
}
