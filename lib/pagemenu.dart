import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MenuItem {
  final String name;
  final String price;
  final String description;
  final double rating;
  final String imagePath; 

  MenuItem({
    required this.name,
    required this.price,
    required this.description,
    required this.rating,
    required this.imagePath,
  });
}

class PageMenu extends StatelessWidget {
  final List<MenuItem> menuItems = [
    MenuItem(
      name: "Hot Pizza",
      price: "Rp. 145.000,-",
      description: "Taste Our Hot Pizza, We Provide Our Great Foods",
      rating: 4.0,
      imagePath: "images/pizza.png", 
    ),
    MenuItem(
      name: "Burger",
      price: "Rp. 100.000,-",
      description: "Delicious Burger with Fresh Ingredients",
      rating: 3.0,
      imagePath: "images/burger.png", 
    ),
    MenuItem(
      name: "Biryani",
      price: "Rp. 115.000,-",
      description: "Savor the tender meat in our signature Biryani",
      rating: 5.0,
      imagePath: "images/biryani.png", 
    ),
    MenuItem(
      name: "Chicken Salan",
      price: "Rp. 140.000,-",
      description: "Simmered to perfection in a fragrant blend of traditional spices",
      rating: 4.0,
      imagePath: "images/salan.png", 
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 85,
        title: const Text(
          "Daftar Menu",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 16.0),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          final MenuItem menuItem = menuItems[index];
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            padding: const EdgeInsets.all(10),
            width: 380,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: Offset(0, 3),
                )
              ],
            ),
            child: Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    menuItem.imagePath, 
                    height: 95,
                    width: 115,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        menuItem.name,
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        menuItem.price,
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.deepOrange),
                      ),
                      Text(
                        menuItem.description,
                        style: TextStyle(fontSize: 14),
                      ),
                      RatingBar.builder(
                        initialRating: menuItem.rating,
                        minRating: 1,
                        direction: Axis.horizontal,
                        itemCount: 5,
                        itemSize: 18,
                        itemPadding: EdgeInsets.symmetric(horizontal: 0.5),
                        itemBuilder: (context, index) => Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
