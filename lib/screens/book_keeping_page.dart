import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookKeepingPage extends StatefulWidget {
  //const BookKeepingPage({Key key}) : super(key: key);

  @override
  _BookKeepingPageState createState() => _BookKeepingPageState();
}

class _BookKeepingPageState extends State<BookKeepingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE4E4E4),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 25, right: 24, left: 24),
            height: 100,
            color: Colors.white,
            child: Align(
              alignment: Alignment.center,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xffE4E4E4)),
                height: 40,
                width: 374,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(bottom: 10),
                    fillColor: Color(0xffE4E4E4),
                    icon: Icon(
                      Icons.search_rounded,
                      size: 32,
                      color: Colors.black,
                    ),
                    hintText: 'Search ',
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 5,
              child: DefaultTabController(
                initialIndex: 1,
                length: 2,
                child: Scaffold(
                  body: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          color: Colors.white,
                        ),
                        TabBar(
                          labelColor: Colors.black,
                          labelStyle: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          tabs: [
                            Tab(
                              text: 'Customer',
                            ),
                            Tab(
                              text: 'Supplier',
                            )
                          ],
                          indicatorSize: TabBarIndicatorSize.tab,
                        ),
                        Expanded(
                          child: TabBarView(
                            children: [
                              Column(
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                      height: 76,
                                      width: 370,
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(12)),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Icon(Icons
                                                  .person_outline_outlined),
                                              SizedBox(width: 20),
                                              Text(
                                                'Rajat Kumar',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                ),
                                              ),
                                              SizedBox(width: 155),
                                              Text(
                                                '\$999',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.green),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 7),
                                          Row(
                                            children: [
                                              SizedBox(width: 44),
                                              Text(
                                                '\$100 adeed on 2nd may, 2021',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                              SizedBox(width: 65),
                                              Text(
                                                'Advance',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      )),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                      height: 76,
                                      width: 370,
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(12)),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Icon(Icons
                                                  .person_outline_outlined),
                                              SizedBox(width: 20),
                                              Text(
                                                'Rajat Kumar',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                ),
                                              ),
                                              SizedBox(width: 155),
                                              Text(
                                                '\$999',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.red),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 7),
                                          Row(
                                            children: [
                                              SizedBox(width: 44),
                                              Text(
                                                '\$100 adeed on 2nd may, 2021',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                              SizedBox(width: 65),
                                              Text(
                                                'Advance',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      )),
                                ],
                              ),
                              Text('Not Configured')
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
