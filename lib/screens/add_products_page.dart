import 'package:flutter/material.dart';

class AddProductsPage extends StatefulWidget {
  //const AddProductsPage({Key key}) : super(key: key);

  @override
  _AddProductsPageState createState() => _AddProductsPageState();
}

class _AddProductsPageState extends State<AddProductsPage> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffFFFFFF),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.only(left: 25, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Add Product', style: TextStyle(fontSize: 25)),
                SizedBox(
                  height: 15,
                ),
                Text('Add product images', style: TextStyle(fontSize: 16)),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Add upto 5 images, first image will be your product’s cover image that will highlight everywhere',
                  style: TextStyle(fontSize: 12),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                SizedBox(
                  height: 18,
                ),
                Image.asset('assets/image_icon.png')
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.only(left: 25, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 18,
                ),
                Text(
                  'Product name',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
                Container(
                  height: 38,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xffE4E4E4)),
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Color(0xffE4E4E4),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'Product meta description',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
                Container(
                  height: 38,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xffE4E4E4)),
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Color(0xffE4E4E4),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'Product description',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
                Container(
                  height: 38,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xffE4E4E4)),
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Color(0xffE4E4E4),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Create Variation',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    SizedBox(width: 160),
                    Switch(
                      value: isChecked,
                      onChanged: null,
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            height: 36,
            width: 363,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 36,
                  width: 84,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Add',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      )),
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xff3881D8)),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 36,
                  width: 250,
                  child: Row(
                    children: [
                      Align(
                        child: Container(
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.only(
                              left: 15, right: 10, top: 5, bottom: 2),
                          height: 28,
                          width: 65,
                          child: Row(
                            children: [
                              Text('Red',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white),
                                  textAlign: TextAlign.start),
                              SizedBox(
                                width: 9,
                              ),
                              Icon(
                                Icons.cancel_outlined,
                                size: 14,
                                color: Colors.white,
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Color(0xff2ECC71)),
                        ),
                        alignment: Alignment.center,
                      ),
                      Align(
                        child: Container(
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.only(
                              left: 15, right: 10, top: 5, bottom: 2),
                          height: 28,
                          width: 65,
                          child: Row(
                            children: [
                              Text('Green',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white),
                                  textAlign: TextAlign.start),
                              SizedBox(
                                width: 9,
                              ),
                              Icon(
                                Icons.cancel_outlined,
                                size: 14,
                                color: Colors.white,
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Color(0xff2ECC71)),
                        ),
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xffE4E4E4),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 150,
            width: 363,
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Align(
                        child: Container(
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.only(left: 15, right: 10, top: 10),
                          height: 28,
                          width: 56,
                          child: Text('Red',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                              textAlign: TextAlign.center),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Color(0xff2ECC71)),
                        ),
                        alignment: Alignment.topLeft,
                      ),
                      Align(
                        child: Container(
                          child: TextField(
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.only(top: 30, left: 10),
                              hintText: 'Price',
                              border: InputBorder.none,
                              fillColor: Color(0xffE4E4E4),
                            ),
                          ),
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.only(left: 15, right: 10, top: 10),
                          height: 28,
                          width: 110,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Color(0xffE4E4E4)),
                        ),
                        alignment: Alignment.topLeft,
                      ),
                      Align(
                        child: Container(
                          child: TextField(
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.only(top: 30, left: 10),
                              hintText: 'Sell price',
                              border: InputBorder.none,
                              fillColor: Color(0xffE4E4E4),
                            ),
                          ),
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.only(left: 15, right: 10, top: 10),
                          height: 28,
                          width: 110,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Color(0xffE4E4E4)),
                        ),
                        alignment: Alignment.topLeft,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Align(
                    child: Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.only(left: 15, right: 18, top: 10),
                      height: 28,
                      width: 248,
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 30, left: 10),
                          hintText: 'Enter Barcode',
                          border: InputBorder.none,
                          fillColor: Color(0xffE4E4E4),
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xffE4E4E4)),
                    ),
                    alignment: Alignment.centerRight,
                  ),
                ),
                Expanded(
                  child: Align(
                    child: Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.only(left: 15, right: 18, top: 10),
                      height: 28,
                      width: 248,
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 30, left: 10),
                          hintText: 'Enter SKU',
                          border: InputBorder.none,
                          fillColor: Color(0xffE4E4E4),
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xffE4E4E4)),
                    ),
                    alignment: Alignment.centerRight,
                  ),
                ),
                Expanded(
                  child: Align(
                    child: Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.only(left: 15, right: 18, top: 10),
                      height: 28,
                      width: 248,
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 30, left: 10),
                          hintText: 'Inventory',
                          border: InputBorder.none,
                          fillColor: Color(0xffE4E4E4),
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xffE4E4E4)),
                    ),
                    alignment: Alignment.centerRight,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.only(left: 25, right: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Item Returnable',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  SizedBox(width: 160),
                  Switch(
                    value: isChecked,
                    onChanged: null,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
