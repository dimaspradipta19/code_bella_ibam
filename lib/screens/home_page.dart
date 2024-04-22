import 'package:flutter/material.dart';
import 'package:myapp/widgets/button_widget.dart';
import 'package:myapp/widgets/image_widget.dart';
import 'package:myapp/widgets/text_widget.dart';
import 'package:myapp/widgets/title_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // singlechildscroll is to prevent the screen overflow and to make the screen scrollable
    return const SingleChildScrollView(
      child: Column(
        children: [
          // this is the imageSection widget and have a required parameter and cannot be null/empty
          ImageSection(
            image: 'images/sungai.jpg',
          ),
          // this is the titleSection widget
          TitleSection(
            name: 'Oeschinen Lake Campground',
            location: 'Kandersteg, Switzerland',
          ),
          // this is the buttonSection widget
          ButtonSection(),
          // this is the textSection widget
          TextSection(
            description:
                'Lake Oeschinen lies at the foot of the Blüemlisalp in the '
                'Bernese Alps. Situated 1,578 meters above sea level, it '
                'is one of the larger Alpine Lakes. A gondola ride from '
                'Kandersteg, followed by a half-hour walk through pastures '
                'and pine forest, leads you to the lake, which warms to 20 '
                'degrees Celsius in the summer. Activities enjoyed here '
                'include rowing, and riding the summer toboggan run.',
          ),
        ],
      ),
    );
  }
}
