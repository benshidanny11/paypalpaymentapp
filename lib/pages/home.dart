import 'package:flutter/material.dart';
import '../models/payment.dart';

class HomeScreen extends StatelessWidget {
  final List<Payment> _paymentList = [
    new Payment(
        paymentTitle: "Mike Line",
        paymentDate: "2 hours ago",
        paymentAmount: 250),
    new Payment(
        paymentTitle: "Google drive",
        paymentDate: "Yesterday",
        paymentAmount: 138.5),
    new Payment(
        paymentTitle: "Casey smith",
        paymentDate: "1 week ago",
        paymentAmount: 531),
  ];

  @override
  Widget build(BuildContext context) {
    print(_paymentList[0].paymentTitle);
    return Scaffold(
      body: Container(
        color: Colors.white,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 350,
              decoration: BoxDecoration(
                color: Colors.blue[900],
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(50)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue[900].withOpacity(0.08),
                    offset: Offset(0, 10), // Shadow position
                  ),
                ],
              ),
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            child: Image.asset('assets/images/paypalmin.png'),
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            child: Image.asset('assets/images/avatar.png'),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Hello Username",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "\$272.30",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Your balance",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Card(
                      color: Colors.blue[900],
                      elevation: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            IconButton(
                                icon: Icon(
                                  Icons.drive_folder_upload,
                                  color: Colors.white,
                                ),
                                onPressed: () {}),
                            Text(
                              "Send money",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Card(
                      color: Colors.white,
                      elevation: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            IconButton(
                                icon: Icon(
                                  Icons.download_outlined,
                                  color: Colors.blue[900],
                                ),
                                onPressed: () {}),
                            Text("Request payment",
                                style: TextStyle(
                                  color: Colors.blue[900],
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Card(
                      color: Colors.white,
                      elevation: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Center(
                          child: IconButton(
                              icon: Icon(
                                Icons.more_vert,
                                color: Colors.blue[900],
                              ),
                              onPressed: () {}),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Activity",
                    style: TextStyle(color: Colors.grey[900]),
                  ),
                  Text(
                    "Veiw all",
                    style: TextStyle(color: Colors.grey[600]),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: _paymentList.map((payment) {
                  return Container(
                    height: 82,
                    margin: EdgeInsets.all(10),
                    child: Card(
                      elevation:10,
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Row(
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              child: Center(
                                child: Text(
                                  payment.paymentTitle.substring(0, 1),
                                  style: TextStyle(
                                      color: Colors.grey[900], fontSize: 18),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              child: Column(
                                children: [
                                  Text(payment.paymentTitle,
                                      style: TextStyle(
                                          color: Colors.grey[900],
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18)),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text(payment.paymentDate),
                                ],
                              ),
                            ),
                            Expanded(
                                child: Container(
                                    child: Text(
                              '\$' + payment.paymentAmount.toString(),
                              textAlign: TextAlign.end,
                              style: TextStyle(color: Colors.green),
                            )))
                          ],
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
