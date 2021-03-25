import 'package:flutter/material.dart';
enum WidgetMarker { activity, meal, weight }

class LoggingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Log",
            style: TextStyle(color: Colors.black),),
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 1,
        ),
        body: BodyWidget(), 
      ),
    );
  }
}

class BodyWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BodyWidgetState();
}

class BodyWidgetState extends State<BodyWidget>  {
  WidgetMarker selectedWidgetMarker = WidgetMarker.activity;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Wrap(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              FlatButton(
                height: 50,
                minWidth: 130,
                onPressed: () {
                  setState(() {
                    selectedWidgetMarker = WidgetMarker.activity;
                  });
                },
                child: Text("Activity",
                style: new TextStyle(
                  fontSize: 15.0,
                  color: Colors.black),
              ),),
          FlatButton(
            height: 50,
            minWidth: 130,
            onPressed: () {
              setState(() {
                selectedWidgetMarker = WidgetMarker.meal;
              });
            },
            child: Text("Meal",
              style: new TextStyle(
                  fontSize: 15.0,
                  color: Colors.black),
            ),),
              FlatButton(
                height: 50,
                minWidth: 130,
                onPressed: () {
                  setState(() {
                    selectedWidgetMarker = WidgetMarker.weight;
                  });
                },
                child: Text("Weight",
                  style: new TextStyle(
                      fontSize: 15.0,
                      color: Colors.black),
                ),),
            ],
        ),
        Container(
          child: getCustomContainer(),
            ),
        SizedBox(
          height: 50,
        ),
        Center(
          child: OutlineButton(
            padding: EdgeInsets.symmetric(horizontal: 40),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)),
            onPressed: () {
              return showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                  title: Text("Well Done!"),
                  content: Text("Keep up the good work."),
                  actions: <Widget>[
                    FlatButton(
                      onPressed: () {
                        Navigator.of(ctx).pop();
                        },
                    child: Text("OK"),
                   ),
                  ],
                ),
              );
            },
            child: Text("SUBMIT",
              style: TextStyle(
                  fontSize: 16, letterSpacing: 2.2, color: Colors.black),
            ),
          ),
        )
          ],
        ),
      ),
    );
  }

  Widget getCustomContainer() {
    switch (selectedWidgetMarker) {
      case WidgetMarker.activity:
        return getactivityWidget();
      case WidgetMarker.meal:
        return getmealWidget();
      case WidgetMarker.weight:
        return getweightWidget();
    }
    return getactivityWidget();
  }

  Widget getactivityWidget() {
    return Container(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: ListView(
          padding: EdgeInsets.all(15.0),
          shrinkWrap: true,
          children: [
            SizedBox(
              height: 35,
            ),
            buildTextField("Activity", "", false),
            buildTextField("Duration", "", false),
            buildTextField("Calorie's burned", "", false),
          ],
        ),
      ),
    );
  }

  Widget getmealWidget() {
    return Container(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: ListView(
          padding: EdgeInsets.all(15.0),
          shrinkWrap: true,
          children: [
            SizedBox(
              height: 35,
            ),
            buildTextField("Meal Name", "", false),
            buildTextField("Total Calories", "", false),
          ],
        ),
      ),
    );
  }

  Widget getweightWidget() {
    return Container(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: ListView(
          padding: EdgeInsets.all(15.0),
          shrinkWrap: true,
          children: [
            SizedBox(
              height: 35,
            ),
            buildTextField("Current Weight", "", false),
          ],
        ),
      ),
    );
  }

  Widget buildTextField(
      String labelText, String placeholder, bool isPasswordTextField) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35.0),
      child: TextField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.only(bottom: 3),
            labelText: labelText,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: placeholder,
            hintStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )
        ),
      ),
    );
  }
}

