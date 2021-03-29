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

class BodyWidgetState extends State<BodyWidget> with AutomaticKeepAliveClientMixin {
  TextEditingController activityTxtController =TextEditingController();
  TextEditingController activity2TxtController =TextEditingController();
  TextEditingController activity3TxtController =TextEditingController();
  TextEditingController mealTxtController =TextEditingController();
  TextEditingController meal2TxtController =TextEditingController();
  TextEditingController weightTxtController =TextEditingController();

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
                  fontSize: 20.0,
                    fontWeight: FontWeight.bold,
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
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
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
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
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
        Align(
          alignment: Alignment.bottomCenter,
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
        return getActivityWidget();
      case WidgetMarker.meal:
        return getMealWidget();
      case WidgetMarker.weight:
        return getWeightWidget();
    }
    return getActivityWidget();
  }

  Widget getActivityWidget() {
    return Container(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: ListView(
          padding: EdgeInsets.all(15.0),
          shrinkWrap: true,
          children: <Widget>[
            buildInputFields("Activity", activityTxtController),
            buildInputFields("Duration", activity2TxtController),
            buildInputFields("Calories", activity3TxtController),
          ],
        ),
      ),
    );
  }

  Widget getMealWidget() {
    return Container(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: ListView(
          padding: EdgeInsets.all(15.0),
          shrinkWrap: true,
          children: <Widget>[
            buildInputFields("Number of Meals", mealTxtController),
            buildInputFields("Calories", meal2TxtController),
          ],
        ),
      ),
    );
  }

  Widget getWeightWidget() {
    return Container(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: ListView(
          padding: EdgeInsets.all(15.0),
          shrinkWrap: true,
          children: <Widget>[
            buildInputFields("Current Weight", weightTxtController),
          ],
        ),
      ),
    );
  }

  Widget buildInputFields(
      String labelText, TextEditingController textController) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35.0),
      child: TextField(
        controller: textController,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.only(bottom: 3),
            labelText: labelText,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelStyle: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
      ),
    ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

