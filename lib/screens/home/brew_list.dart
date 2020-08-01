import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:flutter_with_firebase/models/brew.dart';
import 'package:provider/provider.dart';
import 'package:flutter_with_firebase/screens/home/brew_tile.dart';
=======
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';
>>>>>>> f7b7ef776e194c19beac6ffd4ad871fd2d96ca1e

class BrewList extends StatefulWidget {
  @override
  _BrewListState createState() => _BrewListState();
}

class _BrewListState extends State<BrewList> {
  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    final brews = Provider.of<List<Brew>>(context) ?? [];

    return ListView.builder(
      itemCount: brews.length,
      itemBuilder: (context, index) {
        return BrewTile(brew: brews[index]);
      },
    );
  }
}
=======
    
    final brews = Provider.of<QuerySnapshot>(context);
    //print(brews.documents);
    for (var doc in brews.documents) {
      print(doc.data);
    }

    return Container(
      
    );
  }
}
>>>>>>> f7b7ef776e194c19beac6ffd4ad871fd2d96ca1e
