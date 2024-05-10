import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  String text = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: const Text("33-Dars"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(
            20.0,
          ),
          child: Column(
            children: [
              const Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  Chip(
                    label: Text("Olma"),
                  ),
                  Chip(
                    label: Text("Behi"),
                  ),
                  Chip(
                    label: Text("Olcha"),
                  ),
                  Chip(
                    label: Text("Shaftoli"),
                  ),
                  Chip(
                    label: Text("Uzum"),
                  ),
                  Chip(
                    label: Text("Anor"),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Chip(
                avatar: const Text(
                  "🍟",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                label: const Text(
                  "Kartoshka fri",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                deleteIcon: const Icon(Icons.clear),
                deleteIconColor: Colors.red,
                onDeleted: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    50,
                  ),
                ),
                side: const BorderSide(
                  color: Colors.blue,
                  width: 10,
                  strokeAlign: BorderSide.strokeAlignInside,
                ),
                backgroundColor: Colors.blue.shade200,
                padding: const EdgeInsets.all(0),
                visualDensity: VisualDensity.compact,
              ),
              const SizedBox(height: 50),
              if (text.isNotEmpty)
                Text(
                  text,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              Card(
                color: Colors.white,
                shape: const RoundedRectangleBorder(),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: Column(
                        children: [
                          Container(
                            color: Colors.grey.shade300,
                            width: double.infinity,
                            padding: const EdgeInsets.all(20),
                            child: Image.network(
                              "https://parspng.com/wp-content/uploads/2023/06/watchpng.parspng.com-8.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(height: 20),
                          const Text(
                            "GARNIER",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            "Et labore consequat voluptate ut dolore ipsum deserunt nulla nisi.",
                          ),
                          const SizedBox(height: 20),
                          const Text(
                            "\$60",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              for (var i = 0; i < 5; i++)
                                Icon(
                                  Icons.star,
                                  color: i < 3
                                      ? Colors.amber
                                      : Colors.grey.shade300,
                                ),
                            ],
                          )
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        text = "Savatchaga soat qo'shildi!";
                        setState(() {});
                      },
                      style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(),
                        fixedSize: const Size(double.maxFinite, 60),
                        backgroundColor: Colors.green,
                      ),
                      child: const Text(
                        "ADD TO CART",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
