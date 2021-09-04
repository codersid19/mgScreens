import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class InvoicePage extends StatefulWidget {
  //const InvoicePage({Key key}) : super(key: key);

  @override
  _InvoicePageState createState() => _InvoicePageState();
}

class _InvoicePageState extends State<InvoicePage> {
  List _items = [];
  int totalCost = 0;
  String qrCode = 'Unknown';
  double getProportionateScreenHeight(double inputHeight) {
    double screenHeight = MediaQuery.of(context).size.height;
    // 812 is the layout height that designer use
    return (inputHeight / 812.0) * screenHeight;
  }

// Get the proportionate height as per screen size
  double getProportionateScreenWidth(double inputWidth) {
    double screenWidth = MediaQuery.of(context).size.width;
    // 375 is the layout width that designer use
    return (inputWidth / 375.0) * screenWidth;
  }

  Future<void> readJson() async {
    int cost = 0;
    final String response =
        await rootBundle.loadString('assets/list_item.json');
    final data = await json.decode(response);
    setState(() {
      _items = data["items"];
    });

    for (int i = 0; i < _items.length; i++) {
      cost = _items[i]["price"] + cost;
    }
    totalCost = cost;
  }

  Future<void> scanQRCode() async {
    print('Scanning Started');
    String barcodeScanRes;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.QR);
      print(barcodeScanRes);
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      qrCode = barcodeScanRes;
    });
  }

  @override
  void initState() {
    super.initState();
    readJson();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Color(0xffEFEFEF),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.only(left: 10, right: 10),
            child: Row(
              children: [
                Text(
                  '5 Products',
                  style: TextStyle(fontSize: 25, color: Colors.black),
                ),
                SizedBox(
                  width: 160,
                ),
                Stack(
                  children: [
                    Image.asset('assets/Vector2.png'),
                    Positioned(
                      bottom: 11,
                      right: 6,
                      child: InkWell(
                        child: Image.asset('assets/Vector.png'),
                        onTap: scanQRCode,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    margin: EdgeInsets.all(12),
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white),
                      margin: EdgeInsets.only(left: 20, right: 20),
                      height: getProportionateScreenHeight(150),
                      width: getProportionateScreenWidth(80),
                      child: Row(
                        children: [
                          SizedBox(
                            width: getProportionateScreenWidth(105),
                            child: AspectRatio(
                              aspectRatio: 0.85,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12)),
                                child: Image.asset(
                                  'assets/iphone.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: getProportionateScreenHeight(40),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(_items[index]["title"],
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                                Text(
                                  '\$${_items[index]["price"]} \n${_items[index]["color"]}',
                                  style: TextStyle(
                                      color: Color(0xff666565), fontSize: 18),
                                ),
                                SizedBox(
                                  height: getProportionateScreenHeight(10),
                                ),
                                Expanded(
                                  child: Row(
                                    children: [
                                      Icon(
                                          Icons.remove_circle_outline_outlined),
                                      SizedBox(
                                        width: getProportionateScreenHeight(18),
                                      ),
                                      Text(_items[index]["quantity"].toString(),
                                          style: TextStyle(
                                            color: Color(0xff000000),
                                            fontSize: 18,
                                          )),
                                      SizedBox(
                                        width: getProportionateScreenHeight(3),
                                      ),
                                      IconButton(
                                        icon: Icon(
                                            Icons.add_circle_outline_outlined),
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(30),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                itemCount: _items.length,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.only(left: 10, right: 10),
            child: Row(
              children: [
                Text(
                  'Total',
                  style: TextStyle(
                      fontSize: 28,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 160,
                ),
                Stack(
                  children: [
                    Text(
                      '\$  ${totalCost}',
                      style: TextStyle(fontSize: 28),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.only(left: 10, right: 10),
            child: Row(
              children: [
                SizedBox(
                  height: 64,
                  width: 163,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'ADD MORE',
                      style: TextStyle(fontSize: 22, color: Colors.white),
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
                  width: 80,
                ),
                SizedBox(
                  height: 64,
                  width: 107,
                  child: TextButton(
                    onPressed: () {},
                    child: Icon(Icons.arrow_forward,
                        size: 48, color: Colors.white),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      )),
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xff2ECC71)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
