import 'package:flutter/material.dart';
import 'package:flutter_4/constants.dart';
import 'package:flutter_4/models/recommendation.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Client Recommendations :',
            style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(
              height: kDefaultPadding,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  demoRecommendations.length,
                 (index) =>  Padding(
                   padding: const EdgeInsets.only(right: kDefaultPadding),
                    child: RecommendationsCard(
                     recommendation: demoRecommendations[index],
                   ),
                 ),
                 ),
              ),
            ),
        ],
      ),
    );
  }
}

class RecommendationsCard extends StatelessWidget {
  const RecommendationsCard({
    required this.recommendation,
    Key? key,
  }) : super(key: key);

  final Recommendation recommendation;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding),
      width: 400,
      color: kSecondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(
                recommendation.image!),
            ),
            title: Text(
              recommendation.name!,
              style: Theme.of(context).textTheme.subtitle2,
              ),
              subtitle: Text(
                recommendation.source!,
                style: Theme.of(context).textTheme.bodyText1,
              ),
          ),
          const SizedBox(
            height: kDefaultPadding / 2,
          ),
          Text(
            recommendation.text!,
            style: const TextStyle(height: 1.5),
            overflow: TextOverflow.ellipsis,
            maxLines: 4,
          ),
        ],
      ),
    );
  }
}