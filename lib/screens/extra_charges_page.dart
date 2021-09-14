import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExtraChargesPage extends StatefulWidget {
  //const ExtraChargesPage({Key key}) : super(key: key);

  @override
  _ExtraChargesPageState createState() => _ExtraChargesPageState();
}

class _ExtraChargesPageState extends State<ExtraChargesPage> {
  String dummy = 'hi';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE4E4E4),
      body: Container(
        padding: EdgeInsets.all(10),
        color: Color(0xffE4E4E4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              child: Text(
                'Managing extra charges',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              padding: EdgeInsets.only(left: 10),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 92,
              width: 367,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xffFFFFFF),
              ),
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Packing Charge',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(width: 168),
                      Icon(Icons.delete_outline_outlined),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        '\$ 50',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(width: 270),
                      Icon(Icons.edit_outlined),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 238,
              width: 367,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xffFFFFFF),
              ),
              padding: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      'Add Charges',
                      style: TextStyle(fontSize: 20),
                    ),
                    padding: EdgeInsets.all(10),
                  ),
                  Row(
                    children: [
                      SizedBox(width: 10),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Checkbox(
                          value: true,
                          onChanged: null,
                          checkColor: Color(0xff2ECC71),
                          fillColor: MaterialStateProperty.all(Colors.white),
                          shape: CircleBorder(),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text('Flat', style: TextStyle(fontSize: 18)),
                      SizedBox(width: 10),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Checkbox(
                          value: false,
                          onChanged: null,
                          checkColor: Color(0xff2ECC71),
                          fillColor: MaterialStateProperty.all(Colors.white),
                          shape: CircleBorder(),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text('Percentage', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: TextField(
                      decoration: InputDecoration(hintText: 'Enter Name'),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: TextField(
                      decoration: InputDecoration(hintText: 'Enter Rate'),
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    padding: EdgeInsets.only(right: 10),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xff2ECC71),
                        ),
                        height: 31,
                        width: 96,
                        child: ElevatedButton(
                          onPressed: null,
                          child: Text('Submit',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
