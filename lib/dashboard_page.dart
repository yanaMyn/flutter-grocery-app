import 'package:flutter/material.dart';
import 'package:slicing_grocery_app/card_item.dart';
import 'package:slicing_grocery_app/data.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => DashboardPageState();
}

class DashboardPageState extends State<DashboardPage> {
  final data = Product(
    name: "Bayam",
    price: "Rp 2.500",
    quantity: "5 Ikat",
    image: "assets/menu1.png",
    description: "Sayur fresh",
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(1),
            child: Container(
              height: 0.2,
              color: Colors.black,
            )),
        // shadowColor: Colors.black,
        // shape:
        // const Border(bottom: BorderSide(color: Colors.black, width: 0.2)),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            print("IconButton menu pressed");
          },
        ),
        title: const Text(
          "Toko Buah & Sayur",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Row(
              children: [
                const Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                Stack(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.shopping_cart,
                        color: Colors.black,
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 3,
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.red),
                        child: const Center(
                          child: Text(
                            "2",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(8),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 0.6,
            crossAxisSpacing: 4,
            mainAxisSpacing: 4,
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
            return CardItem(product: items[index]);
          },
          itemCount: items.length,
        ),
      ),
    );
  }
}
