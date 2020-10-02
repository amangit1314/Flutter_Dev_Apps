import 'package:flutter/material.dart';
import 'package:foodiez/models/datamodel.dart';

class SuggestionCard extends StatelessWidget {
  final ImageData imageData;
  final String text;
  const SuggestionCard({
    Key key,
    this.imageData,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imageData.image),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                text,
                style: TextStyle(color: Colors.white),
              ),
              Text(
                '12 Places',
                style: TextStyle(color: Colors.white54),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
