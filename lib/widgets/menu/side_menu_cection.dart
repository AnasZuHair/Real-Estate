import 'package:flutter/material.dart';
import 'package:flutter_4/constants.dart';
import 'package:flutter_4/widgets/menu/contact_info.dart';
import 'package:flutter_4/widgets/menu/goals.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'logo.dart';


class SideMenuCection extends StatelessWidget {
  const SideMenuCection({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child: SafeArea(
        child: Column(
          children:  [
            const Logo(),
            Expanded(
              child: SingleChildScrollView(
                padding: const  EdgeInsets.all(kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:   [
                    const ContactInfo(),
                    const Divider(),
                    const Goals(),
                    const Divider(),
                    const SizedBox(
                      height: kDefaultPadding  ,
                      ),
                    TextButton(
                      onPressed: () {} ,
                      child: FittedBox(
                        child: Row(
                          children: [
                             SvgPicture.asset('assets/icons/download.svg'),
                             const SizedBox(width: kDefaultPadding / 2,),
                             Text('Download Brochuer',
                             style: TextStyle(
                               color: Theme.of(context).textTheme.bodyText1!.color,
                             ),
                             ),
                          ],
                        ),
                      ),
                       ),
                    Container(
                      margin: const  EdgeInsets.only(top: kDefaultPadding * 2),
                      color: kSecondaryColor,
                      child: Row(
                        children:  [
                          const Spacer(),
                          IconButton(
                            onPressed: () {}, 
                            icon:  SvgPicture.asset('assets/icons/linkedin.svg'), 
                            ),
                             IconButton(
                            onPressed: () {}, 
                            icon:  SvgPicture.asset('assets/icons/github.svg'), 
                            ),
                             IconButton(
                            onPressed: () {}, 
                            icon:  SvgPicture.asset('assets/icons/twitter.svg'), 
                            ),
                             IconButton(
                            onPressed: () {}, 
                            icon:  SvgPicture.asset('assets/icons/dribble.svg'), 
                            ),
                            const Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ),
          ],
        ),
        ),
    );
  }
}

