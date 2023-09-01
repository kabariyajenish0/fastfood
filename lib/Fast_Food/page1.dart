import 'package:fastfood/Fast_Food/page2.dart';
import 'package:flutter/material.dart';

class page1 extends StatefulWidget {
  const page1({Key? key}) : super(key: key);

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  int selecte = 0;

  List<Map<String, dynamic>> listname = [
    {'icon': Icons.ramen_dining, 'name': "Noodles"},
    {'icon': Icons.lunch_dining_rounded, 'name': "Burger"},
    {'icon': Icons.icecream, 'name': "Desert"},
    {'icon': Icons.sports_bar, 'name': "Drink"},
  ];
  List<Map<String, dynamic>> listimage = [
    {
      'image': "assets/image/b.png",
      'name': "Chicken",
      'name1': "Burger",
      'prise': "65.000",
      'name2': "Rp"
    },
    {
      'image': "assets/image/b1.png",
      'name': "Double",
      'name1': "Cheese",
      'prise': "85.000",
      'name2': "Rp"
    },
    {
      'image': "assets/image/b2.png",
      'name': "Beef",
      'name1': "Burger",
      'prise': "70.000",
      'name2': "Rp"
    },
    {
      'image': "assets/image/b3.png",
      'name': "Chicken",
      'name1': "Burger",
      'prise': "75.000",
      'name2': "Rp"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xff1EB2A6),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 35, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.shopping_cart,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 25),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.white,
                            child: Image(
                                image: AssetImage(
                                  'assets/image/pngegg (2).png',
                                ),
                                width: 100,
                                height: 100),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Dinihari',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Container(
                                  height: 15,
                                  width: 30,
                                  child: Center(
                                      child: Text(
                                    'Vip',
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.white),
                                  )),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 100, bottom: 13),
                            child: Text(
                              'Rp',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white),
                            ),
                          ),
                          Text(
                            '576.500',
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50, right: 60),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                '139',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                              SizedBox(height: 7),
                              Text(
                                'Buy',
                                style: TextStyle(
                                    fontSize: 10, color: Colors.white),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                '5',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                              SizedBox(height: 7),
                              Text(
                                'Voucher',
                                style: TextStyle(
                                    fontSize: 10, color: Colors.white),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                '24',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                              SizedBox(height: 7),
                              Text(
                                'Alms',
                                style: TextStyle(
                                    fontSize: 10, color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                  bottom: -20,
                  left: 30,
                  right: 30,
                  child: Container(
                    width: 290,
                    height: 50,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25, right: 5),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: false,

                          hintText: ''
                              'What do you want to eat?',
                          hintStyle:
                              TextStyle(fontSize: 13, color: Colors.grey),
                          //  contentPadding: EdgeInsets.only(left: 20, top: 5),
                          prefixIcon: Icon(
                            Icons.search_rounded,
                            color: Color(0xff3F4D4D),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(
                              2,
                              2,
                            ),
                            blurRadius: 5,
                            color: Colors.grey),
                      ],
                    ),
                  ))
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
              width: 365,
              height: 101,
              //color: Colors.redAccent,
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            selecte = index;
                          });
                        },
                        child: Container(
                          height: 65,
                          width: 74,
                          margin: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          decoration: BoxDecoration(
                            color: selecte == index
                                ? Color(0xff3F4D4D)
                                : Colors.white,
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 3, color: Colors.grey,
                                //spreadRadius: 3,
                                offset: Offset(2, 2),
                              ),
                            ],
                          ),
                          child: Icon(
                            listname[index]['icon'],
                            color: selecte == index
                                ? Colors.white
                                : Color(0xff3F4D4D),
                            size: 30,
                          ),
                        ),
                      ),
                      Text(
                        listname[index]['name'],
                        style:
                            TextStyle(color: Color(0xff576A68), fontSize: 13),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Column(
            children: [
              Container(
                width: 400,
                height: 300,
                //color: Colors.redAccent,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Page2(
                                        image: listimage[index]['image'],
                                        name: listimage[index]['name'],
                                        name1: listimage[index]['name1'],
                                        prise: listimage[index]['prise'],
                                        name2: listimage[index]['name2'],
                                      ),
                                    ),
                                  );
                                },
                                child: Container(
                                  height: 260,
                                  width: 200,
                                  margin: EdgeInsets.only(left: 20, top: 20),
                                  decoration: BoxDecoration(
                                    color: Color(0xff1EB2A6),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(50),
                                      bottomLeft: Radius.circular(50),
                                      topRight: Radius.circular(50),
                                      bottomRight: Radius.circular(13),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 20),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              listimage[index]['name'],
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              listimage[index]['name1'],
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                        //    SizedBox(height: 50),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 0,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 8.0,
                                                            bottom: 20),
                                                    child: Text(
                                                      listimage[index]['name2'],
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 11),
                                                    ),
                                                  ),
                                                  Text(
                                                    listimage[index]['prise'],
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(4.0),
                                                child: Container(
                                                  height: 48,
                                                  width: 52,
                                                  child: Icon(
                                                    Icons.add,
                                                    size: 33,
                                                    color: Color(0xff3F4D4D),
                                                  ),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      12,
                                                    ),
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 8,
                          top: 105,
                          child: Container(
                            height: 120,
                            width: 170,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  listimage[index]['image'],
                                ),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: 14,
          ),
          Container(
            height: 55,
            width: 360,
            decoration: BoxDecoration(
                color: Color(0xff1EB2A6),
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                    icon: Icon(Icons.bookmark, color: Colors.white, size: 27),
                    onPressed: () {}),
                IconButton(
                    icon: Icon(Icons.assignment_rounded,
                        color: Colors.white, size: 27),
                    onPressed: () {}),
                CircleAvatar(
                  child: Icon(Icons.home, color: Colors.white, size: 27),
                  backgroundColor: Color(0xffFFA34C),
                ),
                IconButton(
                    icon: Icon(Icons.notifications,
                        color: Colors.white, size: 27),
                    onPressed: () {}),
                IconButton(
                    icon: Icon(Icons.person, color: Colors.white, size: 27),
                    onPressed: () {}),
              ],
            ),
          )
        ],
      ),
    );
  }
}
