import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

void main() {
  runApp(
    const MaterialApp(
      home: BmiWidget(),
    ),
  );
}

class BmiWidget extends StatefulWidget {
  const BmiWidget({super.key});

  @override
  BMIWidget createState() => BMIWidget();

}
class BMIWidget extends State<BmiWidget>{
  double _height = 170;
  double _weight = 50;
  double _bmi = 0;
  String _message = "";

  @override
  Widget build(BuildContext context){
    Widget messageBox ;
    if (_bmi == 0) {
      messageBox =  Text("");

    }
    else {
      messageBox =  Text("BMI is ${_bmi.toStringAsFixed(2)} and $_message");
    }
    return Scaffold(
      appBar: AppBar(
          title: Text('BMI Calcultator'),
          backgroundColor:Colors.red
      ),
      body: SingleChildScrollView(
          child:Container(
              width: double.infinity,
              padding: EdgeInsets.all(32),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.network("https://img.freepik.com/premium-vector/calculator-with-modern-flat-style_3322-74.jpg"),
                   SizedBox(height: 20),
                    Text("BMI Calculator", style: TextStyle(color: Colors.red[700], fontSize: 34, fontWeight: FontWeight.w700),),
                    Text("We care about your health", style: TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w400),),
                    SizedBox(
                      height: 32,
                    ),
                    // Convert the double to a string with 2 decimal places

                   Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text("Height ${_height.toStringAsFixed(2)}", style: TextStyle(color: Colors.grey, fontSize: 24, fontWeight: FontWeight.w400),),
                       Text("(cm)", style: TextStyle(color: Colors.red, fontSize: 30, fontWeight: FontWeight.w400),),

                     ],
                   ),
                    Container(
                        padding:EdgeInsets.only(left:16,right:16),
                        child:Slider(
                            min: 30.0,
                            max: 250.0,
                            onChanged: (height){
                              setState((){
                                _height = height;
                              });
                            },
                            value:_height
                        )
                    ),
                    Text("Weight ${_weight.toStringAsFixed(2)} (kg)", style: TextStyle(color: Colors.grey, fontSize: 24, fontWeight: FontWeight.w400),),
                    Container(
                        padding:EdgeInsets.only(left:16,right:16),
                        child:Slider(
                            min: 50,
                            max: 200,
                            onChanged: (weight){
                              setState((){
                                _weight = weight;
                              });
                            },
                            value:_weight
                        )
                    ),
                    SizedBox(height: 16,),
                    messageBox,
                    Container(
                        child: TextButton.icon(
                            onPressed: (){
                              double bmi = _weight/((_height/100)*(_height/100));
                              String message = "";
                              if(bmi < 18.5){
                                message = "You are underweight";
                              }else if(bmi < 25){
                                message ="Normal";
                              }
                              else if(bmi <= 30){
                                message =  "You are Overweighted";
                              }
                              else{
                                message = "Obesed";
                              }
                              setState(() {
                                _message = message;
                                _bmi = bmi;
                              });
                            }
                            ,label:Text("Calculate"),
                            icon:Icon(Icons.favorite, color: Colors.red),
                        )
                    )

                  ]
              )

          )
      )
      ,
    );

  }
}



