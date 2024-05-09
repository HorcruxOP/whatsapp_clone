import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key, required this.name, required this.image});
  final String name, image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Card(
              color: Colors.white,
              surfaceTintColor: Colors.white,
              shape: const ContinuousRectangleBorder(),
              child: Container(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    Positioned(
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Positioned(
                      right: 5,
                      child: IconButton(
                        icon: const Icon(Icons.more_vert),
                        onPressed: () {},
                      ),
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 60,
                          foregroundImage: NetworkImage(image),
                        ),
                        Text(
                          name,
                          style: TextStyle(fontSize: 25),
                        ),
                        const Text(
                          "+91 7678362318",
                          style: TextStyle(fontSize: 17, color: Colors.grey),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 60,
                              width: 80,
                              padding: const EdgeInsets.symmetric(vertical: 6),
                              decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Column(
                                children: [
                                  Icon(
                                    Icons.call_outlined,
                                    size: 25,
                                    color: Colors.green,
                                  ),
                                  Text(
                                    "Audio",
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 60,
                              width: 80,
                              padding: const EdgeInsets.symmetric(vertical: 6),
                              decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Column(
                                children: [
                                  Icon(
                                    Icons.video_call_outlined,
                                    size: 25,
                                    color: Colors.green,
                                  ),
                                  Text("Video"),
                                ],
                              ),
                            ),
                            Container(
                              height: 60,
                              width: 80,
                              padding: const EdgeInsets.symmetric(vertical: 6),
                              decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Column(
                                children: [
                                  Icon(
                                    Icons.money_outlined,
                                    size: 25,
                                    color: Colors.green,
                                  ),
                                  Text("Pay"),
                                ],
                              ),
                            ),
                            Container(
                              height: 60,
                              width: 80,
                              padding: const EdgeInsets.symmetric(vertical: 6),
                              decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Column(
                                children: [
                                  Icon(
                                    Icons.search_outlined,
                                    size: 25,
                                    color: Colors.green,
                                  ),
                                  Text("Search"),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
