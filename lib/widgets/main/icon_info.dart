import 'package:flutter/material.dart';
import 'package:flutter_4/constants.dart';
import 'package:flutter_4/responsive.dart';

class IconInfo extends StatelessWidget {
  const IconInfo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding * 3),
      child: Responsive.isMobileLarge(context)
      ? Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: buildIconInfo(
                  context: context,
                  textNum: '67+',
                  textTitle: 'Clients',
                  icon: Icons.supervisor_account,
                  ),
              ),
                Expanded(
                  child: buildIconInfo(
                  context: context,
                  textNum: '179+',
                  textTitle: 'Projects',
                  icon: Icons.location_on,
                  ),
                ),
                
            ],
          ),
          const SizedBox(height: kDefaultPadding * 3,),
          Row(
            children: [
              Expanded(
                child: buildIconInfo(
                  context: context,
                  textNum: '40+',
                  textTitle: 'Counries',
                  icon: Icons.public,
                  ),
              ),
                Expanded(
                  child: buildIconInfo(
                  context: context,
                  textNum: '13k+',
                  textTitle: 'Stars',
                  icon: Icons.supervisor_account,
                  ),
                ),
            ],
          )
        ],
      ) :
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildIconInfo(
            context: context,
            textNum: '67+',
            textTitle: 'Clients',
            icon: Icons.supervisor_account,
            ),
            buildIconInfo(
            context: context,
            textNum: '179+',
            textTitle: 'Projects',
            icon: Icons.location_on,
            ),
            buildIconInfo(
            context: context,
            textNum: '40+',
            textTitle: 'Counries',
            icon: Icons.public,
            ),
            buildIconInfo(
            context: context,
            textNum: '13k+',
            textTitle: 'Stars',
            icon: Icons.supervisor_account,
            ),
        ],
      ),
    );
  }

  Column buildIconInfo({
  required BuildContext context,
  required String textNum,
  required String textTitle,
  required IconData icon}) {
    return Column(
        children: [
          Icon(icon,size: 50,),
          const SizedBox(height: 10,),
          Text(
            textNum,
            style: Theme.of(context).textTheme.headline6!.copyWith(
              color: kPrimaryColor,
              fontSize: 30,
            ),
            ),
            Text(
              textTitle,
              style: Theme.of(context).textTheme.subtitle2,
              ),

        ],
      );
  }
}