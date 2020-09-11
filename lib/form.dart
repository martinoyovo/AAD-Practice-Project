import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Forme extends StatefulWidget {
  @override
  _FormeState createState() => _FormeState();
}

class _FormeState extends State<Forme> {
  final TextEditingController _firstName = TextEditingController();
  final TextEditingController _lastName = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _link = TextEditingController();
  String url =
      'https://docs.google.com/forms/d/e/1FAIpQLSf9d1TcNU6zc6KR8bSEM41Z1g1zl35cwZr2xyjIhaMAz8WChQ/formResponse';
  Map<String, String> headers = {"Content-type": "application/json"};
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => showDialog(
          context: context,
          builder: (context) => SimpleDialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                contentPadding: EdgeInsets.fromLTRB(30, 15, 30, 50),
                titlePadding: EdgeInsets.fromLTRB(30, 10, 20, 0),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade800,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Icon(
                            Icons.close,
                            color: Colors.white,
                          )),
                    )
                  ],
                ),
                children: [
                  Center(
                    child: Text.rich(TextSpan(children: [
                      TextSpan(
                          text: 'Are you sure ',
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.grey.shade800,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: '?',
                          style: TextStyle(
                              fontSize: 40,
                              color: Colors.grey.shade800,
                              fontWeight: FontWeight.bold))
                    ])),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: OutlineButton(
                      splashColor: Colors.orangeAccent,
                      focusColor: Colors.orangeAccent,
                      color: Colors.orangeAccent,
                      highlightColor: Colors.orangeAccent,
                      hoverColor: Colors.orangeAccent,
                      highlightedBorderColor: Colors.orangeAccent,
                      borderSide:
                          BorderSide(color: Colors.orangeAccent, width: 2),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          'Yes',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.orangeAccent),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.pop(context);
                      },
                    ),
                  )
                ],
              )),
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
            centerTitle: false,
            leading: IconButton(
              icon: Icon(
                Icons.keyboard_backspace,
                color: Colors.white,
              ),
              onPressed: () => Navigator.pop(context),
            ),
            automaticallyImplyLeading: true,
            title: Container(
              height: 70,
              width: 220,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/Gads.png'), fit: BoxFit.cover)),
            )),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: ListView(
            children: [
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Text(
                    'Project Submission',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.orangeAccent,
                        fontSize: 25),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                    child: Divider(
                      thickness: 2,
                      color: Colors.orangeAccent,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width / 2.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.fromLTRB(10, 3, 10, 1),
                    child: TextField(
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'First Name',
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width / 2.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.fromLTRB(10, 3, 10, 1),,
                    child: TextField(
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Last Name',
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.white,
                ),
                padding: EdgeInsets.fromLTRB(10, 3, 10, 1),,
                child: TextField(
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Email Address',
                      hintStyle:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.white,
                ),
                padding: EdgeInsets.fromLTRB(10, 3, 10, 1),,
                child: TextField(
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Project on GITHUB (link)',
                      hintStyle:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              ShaderMask(
                  shaderCallback: (r) {
                    return LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.white,
                          Colors.orangeAccent.withOpacity(0.7)
                        ]).createShader(r);
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 70),
                    child: RaisedButton(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        'Submit',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25),
                      ),
                      color: Colors.orangeAccent,
                      onPressed: () async {
                        String json =
                            '{"entry.1877115667": "${_firstName.text}", "entry.2006916086": "${_lastName.text}", "entry.1824927963": "${_email.text}", "entry.1824927963": "${_link.text}"}';
                        Response response =
                            await post(url, headers: headers, body: json);
                        int statusCode = response.statusCode;
                        print(statusCode);
                        if (statusCode == 200 || statusCode == 400) {
                          return showDialog(
                              context: context,
                              builder: (context) => SimpleDialog(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 30, vertical: 20),
                                    titlePadding:
                                        EdgeInsets.fromLTRB(30, 0, 20, 0),
                                    children: [
                                      Center(
                                          child: Icon(
                                        Icons.check_circle,
                                        size: 120,
                                        color: Colors.green,
                                      )),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Center(
                                        child: Text(
                                          'Submission Successful',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey.shade800,
                                              fontSize: 20),
                                        ),
                                      )
                                    ],
                                  ));
                        } else {
                          return showDialog(
                              context: context,
                              builder: (context) => SimpleDialog(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 30, vertical: 20),
                                    titlePadding:
                                        EdgeInsets.fromLTRB(30, 0, 20, 0),
                                    children: [
                                      Center(
                                          child: Icon(
                                        Icons.warning,
                                        size: 120,
                                        color: Colors.red,
                                      )),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Center(
                                        child: Text(
                                          'Submission not Successful',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey.shade800,
                                              fontSize: 20),
                                        ),
                                      )
                                    ],
                                  ));
                        }
                      },
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
