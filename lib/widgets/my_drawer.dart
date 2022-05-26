import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mealapp/screens/filters_screen.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 150,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).accentColor,
            width: double.infinity,
            alignment: Alignment.centerLeft,
            child: Text(
              'Cooking UP',
              style: TextStyle(
                fontSize: 20,
                color: Theme.of(context).primaryColor,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          ListTile(
            leading: Icon(Icons.restaurant),
            title: Text(
              'Meals',
              style: TextStyle(fontSize: 25),
            ),
            onTap: () {Navigator.of(context).pushReplacementNamed('/');},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text(
              'Filters',
              style: TextStyle(fontSize: 25),
            ),
            onTap: () {Navigator.of(context).pushReplacementNamed(FiltersScreen.routeName);},
          ),
        ],
      ),
    );
  }
}