import 'package:care_plans/pages/payment_page.dart';
import 'package:flutter/material.dart';

class HolisticCareWidget extends StatefulWidget {
  const HolisticCareWidget({
    super.key,
  });

  @override
  State<HolisticCareWidget> createState() => _HolisticCareWidgetState();
}

class _HolisticCareWidgetState extends State<HolisticCareWidget> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    List planDuration = ['1 Month', '3 Months'];
    List planDescription = ['pay for one month', 'pay for three months'];
    List planPrice = ['₹ 3998', '₹ 9999'];

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
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: holisticCareServices.length,
          itemBuilder: (context, index) => ListTile(
            textColor: Colors.white,
            leading:
                const Icon(Icons.check_circle_rounded, color: Colors.white),
            title: Text(
              holisticCareServices[index].toString(),
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
                padding: const EdgeInsets.fromLTRB(6, 6, 6, 0),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: planDuration.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  child: Container(
                    decoration: BoxDecoration(
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
                            selectedIndex = index;
                          });
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
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const PaymentPage()));
            },
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
              style: TextStyle(
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
