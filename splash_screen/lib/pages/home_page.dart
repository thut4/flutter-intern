import 'package:flutter/material.dart';

import 'LoginRegister/login_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<bool> _onWillPop() async {
    return (await showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  title: const Text('Are you sure?'),
                  content: const Text('Do you want exit?'),
                  actions: [
                    TextButton(
                        onPressed: () => Navigator.of(context).pop(false),
                        child: const Text('No')),
                    TextButton(
                        onPressed: () => Navigator.of(context).pop(true),
                        child: const Text('Yes')),
                  ],
                ))) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return LoginPage();
                  }));
                },
                icon: const Icon(
                  Icons.login,
                  size: 30,
                ))
          ],
        ),
        body: ListView(
          children: [
            SizedBox(
                width: double.infinity,
                child: Image.asset("assets/banner.webp")),
            Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
              color: Colors.teal[100],
              width: double.infinity,
              height: 175,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Our Top Snacks",
                    style: TextStyle(
                      fontSize: 23.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Image.asset(
                          "assets/bubble-tea.png",
                          fit: BoxFit.fill,
                        ),
                        Image.asset(
                          "assets/ramen.png",
                          fit: BoxFit.fill,
                        ),
                        Image.asset(
                          "assets/smoothie.png",
                          fit: BoxFit.fill,
                        ),
                        Image.asset(
                          "assets/fast-food.png",
                          fit: BoxFit.fill,
                        ),
                        Image.asset(
                          "assets/spicy-food.png",
                          fit: BoxFit.fill,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              color: Colors.grey[100],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Our Snacks Price",
                      style: TextStyle(
                        fontSize: 23.0,
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(
                    height: 220,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Card(
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            width: 150,
                            height: 200,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "assets/greentea.png",
                                  fit: BoxFit.fill,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 15),
                                  child: Text(
                                    "Green Tea",
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text(
                                    "1800 Kyat",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Card(
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            width: 150,
                            height: 200,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "assets/hamburger.png",
                                  fit: BoxFit.fill,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 15),
                                  child: Text(
                                    "Burger",
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text(
                                    "2500 Kyat",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Card(
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            width: 150,
                            height: 200,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "assets/fried-chicken.png",
                                  fit: BoxFit.fill,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 15),
                                  child: Text(
                                    "Fried Chicken",
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text(
                                    "1500 Kyat",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
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
}
