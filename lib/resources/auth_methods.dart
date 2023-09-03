import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class AuthMethods{
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String> signUpUser({
    required String email,
    required String password,
    required String username,
    required String bio,
   })async{
    String res = 'Some Error Occured';
    try{
      if(
        email.isNotEmpty || password.isNotEmpty || username.isNotEmpty || bio.isNotEmpty){
        UserCredential cred =await _auth.createUserWithEmailAndPassword(email: email, password: password);
        print(cred.user!.uid);
        
        await _firestore.collection('users').doc(cred.user!.uid).set({
          'username' :username,
          'uid' : cred.user!.uid,
          'bio' : bio,
          'email' : email,
          'followers' : [],
          'following' : [], 
        });

        res='Success'; 
        };
    }catch(err){
      res = err.toString();
    }
    return res;
   }
}