import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Providerclass extends ChangeNotifier {
  Future<void> addfirbase() async {
    await FirebaseFirestore.instance
        .collection("newexperimental")
        .add({"fish": "fishnow"});
    notifyListeners();
  }
}
