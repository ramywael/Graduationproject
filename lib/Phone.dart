
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'OTP.dart';

class MyPhone extends StatefulWidget {
 // const MyPhone({Key? key}) : super(key: key);

  @override
  State<MyPhone> createState() => _MyPhoneState();
}

class _MyPhoneState extends State<MyPhone> {
  TextEditingController CountaryCode=TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    CountaryCode.text="+20";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
leading: IconButton(onPressed: () {Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios)),
      ),
      body: Container(

        margin: EdgeInsets.only(left: 25,right: 25),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assest/python-ticket-tracking-system.png",width: 300,height: 400,),
// SizedBoxBox(height: 1,),
              Text(
                "Phone Verifcation",
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold
                ),
              ),
              Text(
                "We need to register your phone before getting started !",
                style: TextStyle(
                  fontSize:16,
                ),
textAlign: TextAlign.center,
              ),
            SizedBox(height: 30,),
             Container(
               height: 55,
               decoration: BoxDecoration(
                 border: Border.all(width: 1,color: Colors.grey),
                 borderRadius: BorderRadius.circular(10),
               ),
               child: Row(
mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   SizedBox(width: 10,),
                   SizedBox(
                     width: 40,
                     child: TextFormField(
                       controller: CountaryCode,
                       keyboardType: TextInputType.number,
                       decoration: InputDecoration(
                         border: InputBorder.none,
                       ),
                     ),
                   ),
                   Text(
                     "|",
                     style: TextStyle(
                       fontSize: 35,
                       color: Colors.grey
                     ),
                   ),
                   SizedBox(width: 10,),
                   Expanded(child: TextFormField(
                     keyboardType: TextInputType.phone,
                     decoration: InputDecoration(
                       border: InputBorder.none,
                       hintText: "Phone",
                     ),

                   )

                   ),

                 ],
               ) ,

             ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.purple.shade300,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )
                  ),
                  onPressed: () {
Navigator.push(context,
  MaterialPageRoute(builder: (context){ return MyOtp();
                  })
);
                  },
                  child: Text(
                    "Send the code",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
