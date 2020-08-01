import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_with_firebase/models/brew.dart';
import 'package:flutter_with_firebase/screens/home/settings_form.dart';
import 'package:flutter_with_firebase/services/auth.dart';
import 'package:flutter_with_firebase/services/database.dart';
import 'package:provider/provider.dart';
<<<<<<< HEAD
=======
import 'package:cloud_firestore/cloud_firestore.dart';
>>>>>>> f7b7ef776e194c19beac6ffd4ad871fd2d96ca1e
import 'package:flutter_with_firebase/screens/home/brew_list.dart';

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    void _showSettingsPanel() {
      showModalBottomSheet(
          context: context,
          builder: (context) {
            return Container(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
              child: SettingsForm(),
            );
          });
    }

    return StreamProvider<List<Brew>>.value(
      value: DatabaseService().brews,
      initialData: List(),
=======
    return StreamProvider<QuerySnapshot>.value(
      value: DatabaseService().brews,
>>>>>>> f7b7ef776e194c19beac6ffd4ad871fd2d96ca1e
      child: Scaffold(
        backgroundColor: Colors.brown[50],
        appBar: AppBar(
          title: Text('Brew Crew'),
          backgroundColor: Colors.brown[400],
          elevation: 0.0,
          actions: <Widget>[
            FlatButton.icon(
                onPressed: () async {
                  await _auth.signOut();
                },
                icon: Icon(Icons.person),
<<<<<<< HEAD
                label: Text('Logout')),
            FlatButton.icon(
                onPressed: () => _showSettingsPanel(),
                icon: Icon(Icons.settings),
                label: Text('Settings'))
          ],
        ),
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/coffee_bg.png'),
                    fit: BoxFit.cover)),
            child: BrewList()),
=======
                label: Text('Logout'))
          ],
        ),
        body: BrewList(),
>>>>>>> f7b7ef776e194c19beac6ffd4ad871fd2d96ca1e
      ),
    );
  }
}
