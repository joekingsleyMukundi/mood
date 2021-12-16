import 'package:flutter/material.dart';

class Help extends StatelessWidget {
  static final routename = '/help';
  const Help({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height * 1,
          margin: const EdgeInsets.only(left: 5, right: 5, top: 2),
          child: ListView.builder(
            itemCount: 15,
            itemBuilder: (index, context) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blue.shade100,
                  radius: 30,
                  child: Text('NMHH'),
                ),
                title: Text(
                  'Nairobi Mental Health Hospital',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'contact info: 0725647890',
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
