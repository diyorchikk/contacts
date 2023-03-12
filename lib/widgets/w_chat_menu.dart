import 'package:flutter/material.dart';
import '../resources/styles.dart';

class ChatMenu extends StatelessWidget {
  const ChatMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 220,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://res.cloudinary.com/demo/image/fetch/https://upload.wikimedia.org/wikipedia/commons/1/13/Benedict_Cumberbatch_2011.png",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 20,
                            right: 30,
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.cancel_presentation),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 30,
                        right: 30,
                      top: 100,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(5),
                              child: CircleAvatar(
                                maxRadius: 60,
                                backgroundImage: NetworkImage(
                                  "https://res.cloudinary.com/demo/image/fetch/https://upload.wikimedia.org/wikipedia/commons/1/13/Benedict_Cumberbatch_2011.png",
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 70),
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(40),
                                ),
                                border: Border.all(
                                  width: 1,
                                  color: Colors.black45,
                                )),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                right: 14,
                                left: 10,
                              ),
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.edit_road_outlined),
                                  ),
                                  Text(
                                    "Edit",
                                    style: Styles.getTitleStyle().copyWith(
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                "Alvarado Turner",
                style: Styles.getTitleStyle().copyWith(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                left: 10,
                bottom: 5,
                right: 10,
                top: 5,
              ),
              margin: const EdgeInsets.only(left: 20),
              decoration: const BoxDecoration(
                color: Color(0xFFF1F5F9),
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              child: Text(
                "Bond",
                style: Styles.getTitleStyle().copyWith(color: Colors.blueGrey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 15),
                    height: 1,
                    width: double.infinity,
                    color: Colors.black54,
                  ),
                  _items(
                    "Track Service Worker",
                    const Icon(Icons.insert_drive_file_sharp),
                  ),
                  _items(
                    "Futurity",
                    const Icon(Icons.emoji_transportation),
                  ),
                  _items(
                    "aliceharding@mail.us •Personal",
                    const Icon(Icons.email_outlined),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 10,
                      top: 10,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.call),
                          color: Colors.blueGrey,
                          iconSize: 20,
                        ),
                        const SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "+1881 472 3113 •Mobile",
                              style: Styles.getTitleStyle()
                                  .copyWith(color: Colors.black),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "+1881 472 3113 •Work",
                              style: Styles.getTitleStyle()
                                  .copyWith(color: Colors.black),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "+1881 472 3113 •Home",
                              style: Styles.getTitleStyle()
                                  .copyWith(color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  _items(
                    "387 Holt Court, Thomasville, Alaska, PO2867",
                    const Icon(Icons.location_on_outlined),
                  ),
                  _items(
                    "September 17, 1985",
                    const Icon(Icons.cake_outlined),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 10,
                      top: 10,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.menu_open),
                          color: Colors.blueGrey,
                          iconSize: 20,
                        ),
                        const SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Adipisicing exercitation dolor nisi ipsum nostrud anim dolore sint\nveniam consequat lorem sit ex commodo nostrud occaecat\nelit magna magna commodo incididunt laborum ad irure pariatur et\nsit ullamco adipisicing.",
                              style: Styles.getTitleStyle()
                                  .copyWith(color: Colors.black),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "Ullamco in dolore amet est quis consectetur fugiat non nisi\nincididuntid laborum adipisicing dolor proident velit ut quis\naliquip dolore id anim sit adipisicing nisi incididunt enim amet pariatur.",
                              style: Styles.getTitleStyle()
                                  .copyWith(color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
  }

  _items(String name, Icon icon) => Padding(
        padding: const EdgeInsets.only(
          bottom: 10,
          top: 10,
        ),
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: icon,
              color: Colors.blueGrey,
              iconSize: 20,
            ),
            const SizedBox(width: 20),
            Text(
              name,
              style: Styles.getTitleStyle().copyWith(color: Colors.black),
            ),
          ],
        ),
      );
}
