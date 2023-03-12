import 'package:flutter/material.dart';
import '../resources/styles.dart';

class WPersonChat extends StatelessWidget {
  final String occupation;
  final String name;

  const WPersonChat({
    Key? key,
    required this.name,
    required this.occupation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          padding: const EdgeInsets.all(1),
        ),
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.only(
            top: 20,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  const SizedBox(width: 20),
                  const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://res.cloudinary.com/demo/image/fetch/https://upload.wikimedia.org/wikipedia/commons/1/13/Benedict_Cumberbatch_2011.png",
                    ),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: Styles.getTitleStyle().copyWith(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        occupation,
                        style: Styles.getTitleStyle().copyWith(
                          color: Colors.black54,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 15,
                ),
                width: double.infinity,
                height: 1,
                color: Colors.black38,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
