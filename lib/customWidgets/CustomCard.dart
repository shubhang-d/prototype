import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String headline;
  final String str1;
  final String str2;
  final String str3;
  const CustomCard(
      {super.key,
      required this.headline,
      required this.str1,
      required this.str2,
      required this.str3});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(15),
      shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.blueGrey),
          borderRadius: BorderRadius.circular(20)),
      child: SizedBox(
        height: 150,
        width: 300,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 10, right: 10, top: 15, bottom: 13.0),
                child: Text(
                  headline,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 15),
                child: Divider(
                  thickness: 5,
                  indent: 10,
                  endIndent: 10,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, bottom: 15, right: 15),
                child: Text(
                  str1,
                  style: const TextStyle(fontSize: 17),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, bottom: 15, right: 15),
                child: Text(
                  str2,
                  style: const TextStyle(fontSize: 17),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, bottom: 15, right: 15),
                child: Text(
                  str3,
                  style: const TextStyle(fontSize: 17),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Center(
                    child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.add_to_home_screen_outlined),
                  label: const Text("Grab Now"),
                )),
              )
            ]),
      ),
    );
  }
}
