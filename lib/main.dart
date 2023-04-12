import 'package:flutter/material.dart';
import 'Pages/HomePage.dart';
void main() => runApp(MyApp());
class MyApp extends StatefulWidget{
  @override
  _BMI_Calulator createState() => _BMI_Calulator();
}

class _BMI_Calulator extends State<MyApp>{
  final heightValue = TextEditingController();
  final weightVlaue = TextEditingController();
  final ageValue = TextEditingController();
  double _BMI_Calulate = 0.0;

  _findBMINow()
  {
    double height = double.parse(heightValue.text);
    int weight = int.parse(weightVlaue.text);
    height /= 100.0;
    setState(() {
      _BMI_Calulate = weight/(height*height);
      _BMI_Calulate=double.parse(_BMI_Calulate.toStringAsFixed(2));
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "BMI Calculator",
      home: Scaffold(
        appBar: AppBar(
          title: Text("BMI Calculator"),
          centerTitle: false,
        ),
        drawer: Drawer(),

        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical:20,horizontal:10),
              child: Text("To calculate BMi enter specific informations below",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 16,
              ),),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical:20,horizontal:10),
              child: TextField(
                controller: heightValue,
                decoration: InputDecoration(
                  label: Text("Height in CM",
                  style: TextStyle(
                    color: Colors.blue
                  ),),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical:20,horizontal:10),
              child: TextField(
                controller: weightVlaue,
                decoration: InputDecoration(
                  label: Text("Weight in KG",
                    style: TextStyle(
                        color: Colors.blue
                    ),),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical:20,horizontal:10),
              child: TextField(
                decoration: InputDecoration(
                  label: Text("Age",
                    style: TextStyle(
                        color: Colors.blue
                    ),),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(vertical:20, horizontal:10),
                child: ElevatedButton(
                  onPressed: _findBMINow,
                  child: Text("Find BMI"),

                )),
            Padding(
              padding: EdgeInsets.symmetric(vertical:20,horizontal:10),
              child: Text("BMI: $_BMI_Calulate",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16,
                ),),
            ),
          ],
        ),
      ),
    );
    throw UnimplementedError();
  }
}