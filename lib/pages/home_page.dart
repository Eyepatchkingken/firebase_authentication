import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_authentication/auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  HomePage({Key? key}) :super(key: key);

  final User? user = Auth().currentUser; //instance of the auth class which checks for the current user
  Future<void> signOut() async{
    await Auth().signOut();
  }

  Widget _title(){
    return const Text('Firebase Auth');
  }

  Widget _userUid(){
    return Text(user?.email ?? 'User email'); //I'm assuming if the mail is null it displays user email
  }

  Widget _signOutButton(){ //a sign out button that calls the sign out function when called
    return ElevatedButton(
      onPressed: signOut,
      child: const Text('Sign Out'));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: _title(),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.all(20.0),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _userUid(),
            _signOutButton()
          ]),
      ),
    );
  }
}