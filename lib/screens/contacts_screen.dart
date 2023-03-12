import 'package:contacts/widgets/w_text_field.dart';
import 'package:flutter/material.dart';

import '../resources/styles.dart';
import '../widgets/w_chat_menu.dart';
import '../widgets/w_person_chat.dart';

class ContactsScreen extends StatelessWidget {
  final int contacts;

  const ContactsScreen({
    Key? key,
    this.contacts = 80,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const ChatMenu(),
            Padding(
              padding: const EdgeInsets.only(
                left: 25,
                top: 20,
                bottom: 5,
              ),
              child: Text(
                "Contacts",
                style: Styles.getTitleStyle().copyWith(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 25,
                bottom: 20,
              ),
              child: Row(
                children: [
                  Text(
                    "$contacts",
                    style: Styles.getTitleStyle().copyWith(
                      color: Colors.black54,
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    "contacts",
                    style: Styles.getTitleStyle().copyWith(
                      color: Colors.black54,
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 30,
                left: 25,
                right: 20,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: WTextField(
                      name: "Search contacts",
                      controller: TextEditingController(),
                    ),
                  ),
                  const SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 100,
                      height: 40,
                      decoration: const BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Add",
                            style: Styles.getTitleStyle(),
                          ),
                          const SizedBox(width: 10),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ...List.generate(
              5,
              (index) => Column(
                children: [
                  _line(),
                  ...List.generate(
                    10,
                        (index) => const WPersonChat(
                      name: "Alice Harding",
                      occupation: "Track Servise Worker",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _line() => Container(
        decoration: BoxDecoration(
            color: const Color(0xFFF8FAFC),
            border: Border.all(width: 1, color: Colors.black12)),
        width: double.infinity,
        padding: const EdgeInsets.only(
          left: 25,
          bottom: 3,
          top: 3,
        ),
        child: Text(
          "A",
          style: Styles.getTitleStyle()
              .copyWith(color: Colors.black54, fontSize: 15),
        ),
      );
}
