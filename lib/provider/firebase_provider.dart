import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_app/models/user.dart';
import 'package:flutter/material.dart';

class FirebaseProvider extends ChangeNotifier{
  List<User> users=[];
  List<User> getAllUsers(){
    FirebaseFirestore.instance.collection('users').orderBy('isActive' , descending: true).snapshots(includeMetadataChanges: true ).listen((users){
      this.users = users.docs.map((doc)=> User.fromJson(doc.data())) .toList();
      notifyListeners();
    });
    return users;
  }
}