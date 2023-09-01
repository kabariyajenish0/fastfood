import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2(
      {Key? key, this.image, this.name, this.prise, this.name1, this.name2})
      : super(key: key);
  final image;
  final name;
  final prise;
  final name1;
  final name2;

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  List<Map<String, dynamic>> listimage = [
    {
      'image': "assets/image/b1.png",
      'name1': "Double Cheese",
    },
    {
      'image': "assets/image/b2.png",
      'name1': "Beef Burger",
    },
    {
      'image': "assets/image/b3.png",
      'name1': "Chicken Burger",
    },
  ];

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1EB2A6),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios_new,
                      color: Colors.white, size: 15),
                ),
                Row(
                  children: [
                    Icon(Icons.shopping_cart, color: Colors.white),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 10,
                      child: Image(
                          image: AssetImage('assets/image/pngegg (2).png'),
                          width: 20,
                          height: 20),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    children: [
                      Text(
                        widget.name.toString().toUpperCase(),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 5),
                      Text(
                        widget.name1.toString().toUpperCase(),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text('Burger KING Delivery.15000 25',
                      style: TextStyle(color: Colors.white)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 150,
                        width: 180,
                        //color: Colors.white,
                        child: Image.asset(
                          widget.image.toString(),
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            height: 30,
                            width: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 12),
                                  child: Text(widget.name2.toString(),
                                      style: TextStyle(fontSize: 10)),
                                ),
                                Text(widget.prise.toString(),
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15)),
                              ],
                            ),
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Icon(Icons.star,
                                  color: Color(0xffD5F7E7), size: 20),
                              SizedBox(
                                width: 3,
                              ),
                              Icon(Icons.star,
                                  color: Color(0xffD5F7E7), size: 20),
                              SizedBox(
                                width: 3,
                              ),
                              Icon(Icons.star,
                                  color: Color(0xffD5F7E7), size: 20),
                              SizedBox(
                                width: 3,
                              ),
                              Icon(Icons.star,
                                  color: Color(0xffD5F7E7), size: 20),
                              SizedBox(
                                width: 3,
                              ),
                              Icon(Icons.star,
                                  color: Color(0xffD5F7E7), size: 20),
                              SizedBox(
                                width: 3,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                height: 450,
                width: 365,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 40,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Description",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                              "Lorem ipsum dolor sit amet,consectetur\n"
                              "adipiscing elit. Fermentum aecu vitae, libero,proin \n"
                              "id et eros, turpis pellentesque. Diam nam felis,\n"
                              "feugiat eget nibh tellus ullamcorper mattis\n"
                              "bibendum. Malesuada adipiscing dis tincidunt\n"
                              "pretium cras. Est tellus mi fermentum malesuada.",
                              style: TextStyle(color: Colors.black54)),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 400,
                      height: 150,
                      //     color: Colors.redAccent,
                      child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        itemCount: 3,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return Stack(
                            clipBehavior: Clip.none,
                            alignment: Alignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 100,
                                        width: 100,
                                        margin:
                                            EdgeInsets.only(left: 5, top: 5),
                                        decoration: BoxDecoration(
                                          color: Color(0xff1EB2A6),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      listimage[index]["name1"],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff3F4D4D)),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                left: 1,
                                top: 22,
                                bottom: 40,
                                child: Container(
                                  height: 90,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        listimage[index]['image'],
                                      ), //    fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 55,
                            width: 120,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (counter > 0) {
                                        counter--;
                                      }
                                    });
                                  },
                                  icon: Icon(Icons.remove_circle,
                                      size: 26, color: Colors.orange),
                                ),
                                Text("$counter",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18)),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      counter++;
                                    });
                                  },
                                  icon: Icon(Icons.add_circle,
                                      size: 26, color: Colors.orange),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Color(0xffD3F8E7),
                            ),
                          ),
                          Container(
                            height: 55,
                            width: 215,
                            child: Center(
                              child: Text(
                                'Buy Now',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Color(0xffFFA34C),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    topLeft: Radius.circular(50),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
