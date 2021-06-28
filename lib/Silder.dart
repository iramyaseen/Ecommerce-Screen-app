import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

// ignore: camel_case_types
class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

// ignore: camel_case_types
class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    'Items',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    'View more',
                    style: TextStyle(color: Colors.purple),
                  )
                ],
              )
            ],
          ),
        ),
        CarouselSlider(
            items: [
              Padding(
                padding: const EdgeInsets.only(bottom: 3),
                child: Container(
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Container(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, left: 30),
                                child: Image(
                                  image: NetworkImage(
                                      'https://img.global.news.samsung.com/in/wp-content/uploads/2020/08/NextNormalEraNote20_main1.jpg'),
                                  height: 80,
                                  width: 200,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50, top: 10),
                        child: Container(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Note 20 Ultra',
                                    style: TextStyle(
                                        fontSize: 21,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow[300],
                                    size: 15,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow[300],
                                    size: 15,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow[300],
                                    size: 15,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow[300],
                                    size: 15,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow[300],
                                    size: 13,
                                  ),
                                  Text('5.0 (23 Reviews)',
                                      style: TextStyle(fontSize: 10)),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
            options: CarouselOptions(
              height: 180,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.8,
            )),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Container(
              child: Text(
                "More Categories",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Container(
            height: 50,
            width: 100,
            child: CarouselSlider(
                items: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 3),
                    child: Container(
                      width: 140,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.power),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Electronic',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17),
                                        ),
                                        Text(
                                          "20 items",
                                          style: TextStyle(fontSize: 10),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
                options: CarouselOptions(
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Container(
              child: Text(
                "Popular items",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 170,
              height: 150,
              margin: EdgeInsets.only(bottom: 30, top: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400.withOpacity(0.5),
                    spreadRadius: 2,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      'https://photos5.appleinsider.com/gallery/product_pages/211-hero.jpg',
                      height: 100,
                      width: 170,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Iphone 12',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 19),
                        ),
                        Row(
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber[200],
                                      size: 10,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber[200],
                                      size: 10,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber[200],
                                      size: 10,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber[200],
                                      size: 10,
                                    ),
                                    Text('5.0 (23 Reviews)',
                                        style: TextStyle(fontSize: 10)),
                                  ],
                                )),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 170,
              height: 150,
              margin: EdgeInsets.only(bottom: 30, top: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400.withOpacity(0.5),
                    spreadRadius: 2,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      'data:image/jpeg;base64,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',
                      height: 100,
                      width: 170,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Note 20 Ultra',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 19),
                        ),
                        Row(
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber[200],
                                      size: 10,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber[200],
                                      size: 10,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber[200],
                                      size: 10,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber[200],
                                      size: 10,
                                    ),
                                    Text('5.0 (23 Reviews)',
                                        style: TextStyle(fontSize: 10)),
                                  ],
                                )),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 170,
              height: 150,
              margin: EdgeInsets.only(bottom: 30, top: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400.withOpacity(0.5),
                    spreadRadius: 2,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      'data:image/jpeg;base64,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',
                      height: 100,
                      width: 170,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Gaming  PC',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 19),
                        ),
                        Row(
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber[200],
                                      size: 10,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber[200],
                                      size: 10,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber[200],
                                      size: 10,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber[200],
                                      size: 10,
                                    ),
                                    Text('5.0 (23 Reviews)',
                                        style: TextStyle(fontSize: 10)),
                                  ],
                                )),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 170,
              height: 150,
              margin: EdgeInsets.only(bottom: 30, top: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400.withOpacity(0.5),
                    spreadRadius: 2,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  ClipRRect(
                    child: Image.network(
                      'data:image/jpeg;base64,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',
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Backit',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 19),
                        ),
                        Row(
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber[200],
                                      size: 10,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber[200],
                                      size: 10,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber[200],
                                      size: 10,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber[200],
                                      size: 10,
                                    ),
                                    Text('5.0 (23 Reviews)',
                                        style: TextStyle(fontSize: 10)),
                                  ],
                                )),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 170,
              height: 150,
              margin: EdgeInsets.only(bottom: 30, top: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400.withOpacity(0.5),
                    spreadRadius: 2,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      'data:image/jpeg;base64,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',
                      height: 100,
                      width: 170,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Gaming  PC',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 19),
                        ),
                        Row(
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber[200],
                                      size: 10,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber[200],
                                      size: 10,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber[200],
                                      size: 10,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber[200],
                                      size: 10,
                                    ),
                                    Text('5.0 (23 Reviews)',
                                        style: TextStyle(fontSize: 10)),
                                  ],
                                )),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 170,
              height: 150,
              margin: EdgeInsets.only(bottom: 30, top: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400.withOpacity(0.5),
                    spreadRadius: 2,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      'data:image/jpeg;base64,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',
                      height: 100,
                      width: 170,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Gaming  PC',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 19),
                        ),
                        Row(
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber[200],
                                      size: 10,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber[200],
                                      size: 10,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber[200],
                                      size: 10,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber[200],
                                      size: 10,
                                    ),
                                    Text('5.0 (23 Reviews)',
                                        style: TextStyle(fontSize: 10)),
                                  ],
                                )),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 170,
              height: 150,
              margin: EdgeInsets.only(bottom: 30, top: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400.withOpacity(0.5),
                    spreadRadius: 2,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      'data:image/jpeg;base64,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',
                      height: 100,
                      width: 170,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Gaming  PC',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 19),
                        ),
                        Row(
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber[200],
                                      size: 10,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber[200],
                                      size: 10,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber[200],
                                      size: 10,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber[200],
                                      size: 10,
                                    ),
                                    Text('5.0 (23 Reviews)',
                                        style: TextStyle(fontSize: 10)),
                                  ],
                                )),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 170,
              height: 150,
              margin: EdgeInsets.only(bottom: 30, top: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400.withOpacity(0.5),
                    spreadRadius: 2,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      'data:image/jpeg;base64,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',
                      height: 100,
                      width: 170,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Gaming  PC',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 19),
                        ),
                        Row(
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber[200],
                                      size: 10,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber[200],
                                      size: 10,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber[200],
                                      size: 10,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber[200],
                                      size: 10,
                                    ),
                                    Text('5.0 (23 Reviews)',
                                        style: TextStyle(fontSize: 10)),
                                  ],
                                )),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 170,
              height: 150,
              margin: EdgeInsets.only(bottom: 30, top: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400.withOpacity(0.5),
                    spreadRadius: 2,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      'data:image/jpeg;base64,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',
                      height: 100,
                      width: 170,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Gaming  PC',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 19),
                        ),
                        Row(
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber[200],
                                      size: 10,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber[200],
                                      size: 10,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber[200],
                                      size: 10,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber[200],
                                      size: 10,
                                    ),
                                    Text('5.0 (23 Reviews)',
                                        style: TextStyle(fontSize: 10)),
                                  ],
                                )),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 170,
              height: 150,
              margin: EdgeInsets.only(bottom: 30, top: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400.withOpacity(0.5),
                    spreadRadius: 2,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      'data:image/jpeg;base64,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',
                      height: 100,
                      width: 170,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Gaming  PC',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 19),
                        ),
                        Row(
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber[200],
                                      size: 10,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber[200],
                                      size: 10,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber[200],
                                      size: 10,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber[200],
                                      size: 10,
                                    ),
                                    Text('5.0 (23 Reviews)',
                                        style: TextStyle(fontSize: 10)),
                                  ],
                                )),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
