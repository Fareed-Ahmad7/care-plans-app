import 'package:expansion_tile_group/expansion_tile_group.dart';
import 'package:flutter/material.dart';

class Faq extends StatelessWidget {
  const Faq({super.key});

  @override
  Widget build(BuildContext context) {
    List questions = [
      'What should I consider before choosing a plan?',
      'What is the Basic Plan and who should choose it?',
      'What are the pros and cons of the Basic Plan?',
      'What is the Prime Plan and who should choose it?',
      'What are the pros and cons of the Prime Plan?',
      'What is the Holistic Plan and who should choose it?',
      'What are the pros and cons of the Holistic Plan?'

    ];
    List answers = [
      "You should consider the age of your baby, if the baby was pre-term, the type of delivery, and whether you're a working mom or homemaker.",
      "The Basic Plan includes WhatsApp chat with pediatricians and free 15 minute consultations with doctors during the day time. It is suited for parents who are homemaker, had a normal delivery, the baby is pre-term, gaining age appropriate weight, able to generate enough breastmilk, and baby has no history of hospitalization.",
      "The pros are that it is affordable and gives you access to the core of Babynama's service, that is, pediatricians on WhatsApp. The cons are that you will have to pay extra for night pediatric and all other consultations, like lactation and nutrition support.",
      "The Prime Plan includes everything in the Basic Plan along with monthly growth tracking, free night consultations, and lactation and nutrition support for the baby. It is suited for parents who are homemaker, had a normal delivery, but the baby was born pre-term, or had a history of improper growth or hospitalization. Also, if you're unable to produce enough breastmilk or are unsure about the best practices with starting solids for your baby, this plan is for you.",
      "The pros are that it is the most value-for-money plan as you get 24X7 access to free consultations and proper nutrition counseling for breastfeeding and weaning aid so that your baby is on the right growth path. Moreover, with free growth tracking by a pediatrician every month, you can ensure that any growth related red-flags are identified in time. The cons are that it does not include gynecology and psychologist support, and a dedicated pediatrician.",
      "The Holistic Plan includes all services that Babynama has to offer. Along with free access to all our experts and workshops, you will also get a dedicated pediatrician to chat with privatelv who will know our baby's complete medical history and will proactively create personalized care plans for you and your baby. It is suited for working moms who need to find the right work-life balance, had a c-section delivery, or are facing any psychological challenges that usually accompany childbirth.",
      "The pros are that if you value your privacy and want access to private chat with doctors, then this plan is for you. With access to psychologists and gynecologists, we want to ensure that you yourself are mentally and physically ready for the challenges of motherhood. Healthy moms raise healthy babies. The cons are none, really. Price isn't a con, it is just the fair amount we need to compensate the doctors for the time and energy they will be dedicating towards you in this plan."
    ];
    return Column(
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(16, 4, 0, 0),
              child: const Text(
                'Frequently asked questions',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  letterSpacing: .5,
                ),
              ),
            ),
          ],
        ),
        Column(
          children: [
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.fromLTRB(24, 16, 24, 0),
              shrinkWrap: true,
              itemCount: questions.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 16),
                child: ExpansionTileBorderItem(
                  title: Text(
                    questions[index],
                    style: const TextStyle(
                      color: Colors.white,
                      fontFamily: 'Nunito',
                      letterSpacing: .2,
                    ),
                  ),
                  expendedBorderColor: Colors.white,
                  collapsedIconColor: Colors.white,
                  iconColor: Colors.white,
                  children: [
                    Text(
                      answers[index],
                      style: const TextStyle(
                        color: Colors.white,
                        fontFamily: 'Nunito',
                        letterSpacing: .2,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
