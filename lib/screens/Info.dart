import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/auth.dart';

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Auth auth = Provider.of<Auth>(context);
    var auth_data = auth.auth_data;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image.network("https://i.imgflip.com/65ye7l.jpg"),
            Text(auth_data['id'].toString()),
            Text(auth_data['email'].toString()),
            Text(auth_data['name'].toString())],
        ),
      ),
    );
  }
}
