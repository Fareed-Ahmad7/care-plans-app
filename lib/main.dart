import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(),
        backgroundColor: const Color.fromRGBO(0, 21, 35, 1),
        body: Column(
          children: [
            Row(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(32, 64, 0, 16),
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
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Choose the best care plan for your baby ',
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          // fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const CarePlans()
            // Row(children: [
            //   Column(
            //     children: [
            //       Expanded(child: ListTile(tileColor: Colors.amber,title: Text('aksdhjaksdzldhsjkds')))
            //       // Row(
            //       //   children: const[
            //       //      Padding(padding: EdgeInsets.all(16), child: ListTile(tileColor: Colors.amber,title: Text('aksdhjaksdzldhsjkds'),),)
            //       //   ],
            //       // )
            //     ],
            //   )
            // ],)
          ],
        ),
      ),
    );
  }
}

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
          // color: Colors.amber,
          margin: const EdgeInsets.symmetric(vertical: 20.0 / 2),
          height: 30.0,
          child: ListView.builder(
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
                  color: index == selectedIndex
                      ? const Color.fromRGBO(142, 202, 230, 1).withOpacity(0.6)
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
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
        carePlanOptionsWidgets[selectedIndex],
      ],
    );
    ;
  }
}

class BasicCareWidget extends StatelessWidget {
  const BasicCareWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List basicCareServices = [
      'Pediatric care in 15 minutes',
      'Instant chat with pediatricians on WhatsApp',
      'Free pediatrician consultations (day)',
      'Live Yoga Sessions'
    ];
    return Column(
      children: [
        ListView.builder(
          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: basicCareServices.length,
          itemBuilder: (context, index) => ListTile(
            // tileColor: Colors.amber,
            textColor: Colors.white,
            leading:
                const Icon(Icons.check_circle_rounded, color: Colors.white),
            title: Text(
              basicCareServices[index].toString(),
              style: TextStyle(fontFamily: 'Nunito'),
            ),
          ),
        ),
        // Container(
        //   child: ListTile(
        //     tileColor: Colors.amber,
        //     title: Text('sdjk'),
        //   ),
        // )
      ],
    );
  }
}

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
          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
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
          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
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
