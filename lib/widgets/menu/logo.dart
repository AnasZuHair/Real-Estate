import 'package:flutter/material.dart';

import '../../constants.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: kSecondaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:  [
            const Spacer(flex: 2,),
            const Image(image: AssetImage('assets/images/logo.png'),
            width: 100,
            ),
            const Spacer(),
            Text(
              'Real Estate',
              style: Theme.of(context).textTheme.subtitle2,
            ),
            const Text(
              'modern home with \n greate interior design ',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
              ),
              const Spacer(flex: 2,),
          ],
        ),
      ),
      );
  }
}