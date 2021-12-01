import 'package:flutter/material.dart';
import 'package:flutter_4/constants.dart';
import 'package:flutter_4/responsive.dart';
import 'package:flutter_4/widgets/menu/side_menu_cection.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({ Key? key  ,required this.mainSection}) : super(key: key);
  final Widget mainSection;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)? null: AppBar(
        backgroundColor: kBgColor,
        leading: Builder(
          builder: (context) =>  IconButton(
          onPressed: (){
            Scaffold.of(context).openDrawer();
          },
         icon: const Icon(Icons.menu), 
         ),),
        ),
        drawer: const SideMenuCection(),
      body: SafeArea(
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxHeight: 1440.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if(Responsive.isDesktop(context))
                const Expanded(
                  flex: 2,
                  child: SideMenuCection(),
                  ),
                  const SizedBox(
                    width: kDefaultPadding,
                  ),
                   Expanded(
                     flex: 7,
                  child: mainSection,
                   ),
                   const SizedBox(width: kDefaultPadding,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}