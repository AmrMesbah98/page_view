import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Data {
  final String title;
  final String description;
  final String imageUrl;
  final IconData iconData;

  Data({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.iconData,
  });
}

class Pview extends StatefulWidget {
  const Pview({super.key});

  @override
  State<Pview> createState() => _PviewState();
}

class _PviewState extends State<Pview> {
  int select_indicator = 0;

  List myData = [
    Data(
      title: 'title 1 ',
      description:
          'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry',
      imageUrl: 'images/q1.jpg',
      iconData: Icons.add_box,
    ),
    Data(
      title: 'title 2 ',
      description:
          't is a long established fact that a reader will be distracted by the readable content of a page when looking at its',
      imageUrl: 'images/q2.jpg',
      iconData: Icons.add_reaction,
    ),
    Data(
      title: 'title 3 ',
      description:
          'Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC',
      imageUrl: 'images/q3.jpg',
      iconData: Icons.add_circle,
    ),
    Data(
      title: 'title 4 ',
      description:
          'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration ',
      imageUrl: 'images/q4.jpg',
      iconData: Icons.add_comment,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Stack(
        children: [
          PageView(
             scrollDirection :Axis.horizontal,
            onPageChanged: (value) {
              setState(() {
                select_indicator = value;
              });
            },
            children: [
              ...myData.map((item) {
                return Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: ExactAssetImage(item.imageUrl),
                          fit: BoxFit.cover)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        item.iconData,
                        size: 130,
                      ),
                      const SizedBox(height: 50),
                      Text(
                        item.title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        item.description,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                );
              }).toList(),
            ],
          ),
          Positioned(
            top: 380,
            right: 180,
            child: Idictatior(select_indicator),
          ),
          Builder(builder: (ctx) {
            return Align(
              alignment: const Alignment(0, 0.93),
              child: Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red)),
                  onPressed: () {
                    Navigator.of(context).pushNamed('/x1');
                  },
                  child: const Text(
                    'Get Started',
                    style: TextStyle(fontSize: 27, color: Colors.white),
                  ),
                ),
              ),
            );
          })
        ],
      )),
    );
  }
}

class Idictatior extends StatelessWidget {
  int index;

  Idictatior(this.index);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          builder_indictor(0),
          builder_indictor(1),
          builder_indictor(2),
          builder_indictor(3),
        ],
      ),
    );
  }

  Widget builder_indictor( int i ) {
    return index == i? const Icon(Icons.star) : Container(
      margin: const EdgeInsets.all(5),
      width: 14,
      height: 14,
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
    );
  }
}
