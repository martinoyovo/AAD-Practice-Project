import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class One extends StatelessWidget {
  final String apiUrl = "https://gadsapi.herokuapp.com/api/hours";

  Future<List<dynamic>> fetchUsers() async {
    var result = await http.get(apiUrl);
    return json.decode(result.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: FutureBuilder<List<dynamic>>(
          future: fetchUsers(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  padding: EdgeInsets.all(8),
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            leading: Image.asset('images/top-learner.png'),
                            title: Text(snapshot.data[index]['name']),
                            subtitle: Text(
                                snapshot.data[index]['hours'].toString() +
                                    " learning hours, " +
                                    snapshot.data[index]['country'].toString()),
                          )
                        ],
                      ),
                    );
                  });
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
/*
* title: Text(_name(snapshot.data[index])),
                            subtitle: Text(_location(snapshot.data[index])),
                            trailing: Text(_age(snapshot.data[index])),*/
