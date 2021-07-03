import 'package:flutter/material.dart';
import '../widgets/buttons.dart';

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {

  var input = '\$ ';
  final List<String> buttons = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '9',
    '9',
    '0',
    '.',
    'del',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    child: IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.grey[600],
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                  ),
                  Expanded(
                    child: Center(
                        child: Text(
                      "Send money",
                      style: TextStyle(color: Colors.grey[600], fontSize: 18),
                    )),
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.all(15),
                height: 100,
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(color:Colors.grey[100],borderRadius: BorderRadius.all(Radius.circular(25))),
                      child: Center(child: Text("A")),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("To",style: TextStyle(color: Colors.grey[100],fontSize: 13),),
                          SizedBox(height: 6,),
                          Text("Ann Nielsen",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 16)),
                          SizedBox(height: 2,),
                          Text("annnelsen@gmail.com",style: TextStyle(fontWeight: FontWeight.w100,fontSize: 14)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch
                ,
                children: [
                  Container(
                    height: 45,
                    margin: EdgeInsets.all(20),
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        border: Border.all(color: Colors.blue[900],width: 2)
                    ),
                    child: Text(input,style: TextStyle(fontSize: 18,),),
                  )
                ],
              ),
              Container(
                height:470,
                child: GridView.builder(
                    itemCount: buttons.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3),
                    itemBuilder: (BuildContext context, int index) {
                      if(index==11){
                        return GestureDetector(
                          onTap: (){},
                          child: Container(
                            width: 20,
                            height: 20,
                            margin: EdgeInsets.all(20),
                            decoration: BoxDecoration(color:  Colors.grey[100],borderRadius: BorderRadius.all(Radius.circular(40))),
                            child: Center(
                              child: Text(
                                buttons[index],
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        );
                      }else{
                          return GestureDetector(
                           onTap: (){
                                 setState(() {
                                   input+=buttons[index];
                                 });
                               }
                           ,
                           child: Container(
                             width: 20,
                             height: 20,
                             margin: EdgeInsets.all(20),
                             decoration: BoxDecoration(color:  Colors.grey[100],borderRadius: BorderRadius.all(Radius.circular(40))),

                             child: Center(
                               child: Text(
                                 buttons[index],
                                 style: TextStyle(
                                   color: Colors.black54,
                                   fontSize: 18,
                                   fontWeight: FontWeight.bold,
                                 ),
                               ),
                             ),
                           ),
                         );




                        // MyButton(
                        //   buttontapped: () {
                        //     setState(() {
                        //       input+=buttons[index];
                        //     });
                        //   },
                        //   buttonText: buttons[index],
                        //   color: Colors.grey[100],
                        //   textColor: Colors.black54,
                       // );
                      }

                    }), // GridView.builder
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue[900],
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue[900].withOpacity(0.3),
                      offset: Offset(0,5), // Shadow position
                    ),
                  ],
                ),
                width: 200,
                child: FlatButton(
                  onPressed: () {


                  },
                  child: Text(
                    "Send",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    ));
  }
}
