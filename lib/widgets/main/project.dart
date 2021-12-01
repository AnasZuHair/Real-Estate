import 'package:flutter/material.dart';
import 'package:flutter_4/constants.dart';
import 'package:flutter_4/models/projects.dart';
import 'package:flutter_4/responsive.dart';

class Project extends StatelessWidget {
  const Project({ Key? key }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Our Projects',
          style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
          Responsive(
            desktop: buildGridView(
            itemCount: demoProjects.length,
              crossAxsitCount: 3,
              chuldAspectRatio: 0.75,
              itemBuilder: (context, index) =>  ProjectCard(
              projects: demoProjects[index],
              ),
          ),
          mobile: buildGridView(
            itemCount: demoProjects.length,
              crossAxsitCount: 1,
              chuldAspectRatio: 0.75,
              itemBuilder: (context, index) =>  ProjectCard(
              projects: demoProjects[index],
              ),
          ),
          mobileLarge: buildGridView(
            itemCount: demoProjects.length,
              crossAxsitCount: 2,
              chuldAspectRatio: 0.75,
              itemBuilder: (context, index) =>  ProjectCard(
              projects: demoProjects[index],
              ),
          ),
          tablet: buildGridView(
            itemCount: demoProjects.length,
              crossAxsitCount: MediaQuery.of(context).size.width < 900 ? 2 : 3,
              chuldAspectRatio: 0.75,
              itemBuilder: (context, index) =>  ProjectCard(
              projects: demoProjects[index],
              ),
          ),
          ),
      ],    
    );
  }
}

GridView buildGridView({
  required int itemCount,
  required int crossAxsitCount,
  required double chuldAspectRatio,
  required IndexedWidgetBuilder itemBuilder,
}){
  return  GridView.builder(
            itemCount: itemCount,
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxsitCount,
              crossAxisSpacing: kDefaultPadding,
              mainAxisSpacing: kDefaultPadding,
              childAspectRatio: chuldAspectRatio,
              ) ,
            itemBuilder: itemBuilder,
            );
}

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.projects,
  }) : super(key: key);

  final Projects projects;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding),
      color: kSecondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            projects.image!,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
          Text(
           projects.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
          Expanded(
            child: Text(
              projects.description!,
              style: const TextStyle(height: 1.5),
            ),
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
          TextButton(
            onPressed: () {},
            child:  const Text('More Info >',
            style:TextStyle(color: kPrimaryColor) ,
            ),
            ),
        ],
      ),
    );
  }
}