import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('please, log in'),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                decoration: InputDecoration(hintText: 'name'),
                // validator: (value) {
                //   if (value == null || value.isEmpty) {
                //     return 'name required';
                //   }
                //   return null;
                // },
              ),
              TextFormField(
                decoration: InputDecoration(hintText: 'password'),
                obscureText: true,
                // validator: (value) {
                //   if (value == null || value.isEmpty) {
                //     return 'password required';
                //   }
                //    return null;
                // },
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('hello'),
                      content: Text('Are you sure ?'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('you\'ve logged in')));
                            Navigator.pop(context);
                          },
                          child: Text('yes'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('no'),
                        )
                      ],
                    ),
                  );
                },
                child: Text('log in'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
