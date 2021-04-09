import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shapeme/Meal_details.dart';

class MealPage extends StatefulWidget {
  @override
  _MealPageState createState() => _MealPageState();
}

class _MealPageState extends State<MealPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Meal",
          style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      backgroundColor: Color(0xFF21BFBD),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 25.0),
          Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Row(
              children: <Widget>[
                Text('Today\'s',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0)),
              SizedBox(width: 10.0,),
              Text('Meals',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  color: Colors.white,
                  fontSize: 25.0)),
              ],
            ),
          ),
          SizedBox(height: 40.0),
          Container(
            height: MediaQuery.of(context).size.height - 185.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
            ),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: 25.0, right: 20.0),
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 45.0),
                    child: Container(
                    height: MediaQuery.of(context).size.height - 300.0,
                      child: ListView(
                        children: [
                          _buildFoodItem('build/flutter_assets/meal3.png', 'Poached salmon', '\383Kcal', '\26', '\26', '\200', '\224'),
                          _buildFoodItem('build/flutter_assets/meal2.png', 'Spring Bowl', '\525Kcal', '\30', '\30', '\200', '\124'),
                          _buildFoodItem('build/flutter_assets/meal1.png', 'Avocado Bowl', '\450Kcal', '\24', '\28', '\200', '\130'),
                          _buildFoodItem('build/flutter_assets/meal4.png', 'Berry Bowl', '\480Kcal', '\15', '\24', '\200', '\120'),
                        ],
                      ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildFoodItem(String imgPath, String foodName, String kCal, String vitamin, String fat, String weight, String protein) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
      child: InkWell(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Row(
                children: [
                  Hero(
                    tag: imgPath,
                    child: Image(
                      image: AssetImage(imgPath),
                      fit: BoxFit.cover,
                      height: 75.0,
                      width: 75.0
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        foodName,
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        kCal,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 15.0,
                            color: Colors.grey
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            IconButton(
              icon: Icon(Icons.arrow_forward_ios),
              color: Colors.black,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => DetailsPage(heroTag: imgPath, foodName: foodName, kCal: kCal, protein: protein, vitamin: vitamin, fat:fat, weight:weight))
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

























