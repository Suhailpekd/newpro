import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_app/provider.dart';

class Newhome extends StatefulWidget {
  const Newhome({super.key});

  @override
  State<Newhome> createState() => _NewhomeState();
}

class _NewhomeState extends State<Newhome> {
  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Add User"),
        backgroundColor: Colors.red,
      ),
      floatingActionButton: Consumer<Providerclass>(
          builder: (context, providermodal, child) =>
              FloatingActionButton(onPressed: () {
                providermodal.addfirbase();
              })),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: screensize.height / 2,
                width: screensize.width,
                decoration: BoxDecoration(color: Colors.amber),
              ),
              Center(
                  child: ElevatedButton(
                      clipBehavior: Clip.hardEdge,
                      onPressed: () {},
                      child: Text("OK")))
            ],
          ),
        ],
      ),
    );
  }
}
