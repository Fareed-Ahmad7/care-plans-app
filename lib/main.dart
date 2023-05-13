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
        body: SingleChildScrollView(
          child: Column(
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
                            fontSize: 14,
                            letterSpacing: .4,
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

class BasicCareWidget extends StatefulWidget {
  const BasicCareWidget({
    super.key,
  });

  @override
  State<BasicCareWidget> createState() => _BasicCareWidgetState();
}

class _BasicCareWidgetState extends State<BasicCareWidget> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    List planDuration = ['1 Month', '3 Months'];
    List planDescription = ['pay for one month', 'pay for three months'];
    List planPrice = ['₹ 999', '₹ 2499'];

    List basicCareServices = [
      'Pediatric care in 15 minutes',
      'Instant chat with pediatricians on WhatsApp',
      'Free pediatrician consultations (day)',
      'Live Yoga Sessions'
    ];
    return Column(
      children: [
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
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
              style: const TextStyle(
                fontFamily: 'Nunito',
                letterSpacing: .3,
              ),
            ),
          ),
        ),
        Row(children: [
          Container(
            padding: const EdgeInsets.fromLTRB(16, 4, 0, 4),
            child: const Text(
              'Select payment options',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.bold,
                fontSize: 18,
                letterSpacing: .5,
              ),
            ),
          ),
        ]),
        Row(
          children: [
            Expanded(
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.all(6),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: planDuration.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      // border: Border.all(color: Colors.grey),
                      // border:,
                      border: index == selectedIndex
                          ? Border.all(color: Colors.grey, width: 1.5)
                          : Border.all(color: Colors.grey.withOpacity(0.5)),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: ListTile(
                        tileColor: index == selectedIndex
                            ? const Color.fromRGBO(26, 117, 159, .2)
                            : null,
                        textColor: Colors.white,
                        leading: index == selectedIndex
                            ? const Icon(
                                Icons.radio_button_checked,
                                color: Colors.white,
                              )
                            : Icon(
                                Icons.radio_button_unchecked,
                                color: Colors.white.withOpacity(0.5),
                              ),
                        title: Text(
                          planDuration[index],
                          style: const TextStyle(
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.bold,
                            letterSpacing: .3,
                          ),
                        ),
                        subtitle: Text(
                          planDescription[index],
                          style: const TextStyle(
                            fontFamily: 'Nunito',
                            letterSpacing: .3,
                          ),
                        ),
                        trailing: Text(
                          planPrice[index],
                          style: const TextStyle(
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.bold,
                            letterSpacing: .3,
                            fontSize: 18,
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            // print(index);
                            selectedIndex = index;
                          });
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => ShopDetails(
                          //               shop_details: shop,
                          //             )));
                        }),
                  ),
                ),
              ),
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.all(16),
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromRGBO(26, 117, 159, 0.5),
              elevation: 20,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                )
              // backgroundColor: Colors.grey,
            ),
            child: const Text(
              'Make Payment',
              style:  TextStyle(
                fontFamily: 'Nunito',
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
                fontSize: 16,
              ),
            ),
          ),
        ),
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
