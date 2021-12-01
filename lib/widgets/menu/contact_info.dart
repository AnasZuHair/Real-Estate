import 'package:flutter/material.dart';
import 'package:flutter_4/constants.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         buildCotactInfo(
          title: 'Address',
          text: 'Station Street 5',
        ),
        buildCotactInfo(
          title: 'Country',
          text: 'Asutria',
        ),
        buildCotactInfo(
          title: 'Email',
          text: 'emil@website.com',
        ),
        buildCotactInfo(
          title: 'Mobile',
          text: '+43 123 456 789',
        ),
        buildCotactInfo(
          title: 'WebSite',
          text: 'my@website.com',
        ),
      ],
    );
  }

  Padding buildCotactInfo({required String title , required String text}) {
    return Padding(
        padding: const EdgeInsets.only(bottom: kDefaultPadding / 2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:  [
            Text(
              title,
              style: const TextStyle(color: Colors.white),
              ),
              Text(
                text,
                ),
          ],
        ),
      );
  }
}