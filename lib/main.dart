import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(
    HomePage(),
  );
}

class HomePage extends StatelessWidget {
  // const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My CV App'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Card(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 20.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 50.0,
                        backgroundImage: AssetImage("assets/sovaa.jpg"),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        "Sovaa Kushwaha",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        'App Developer',
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 9.0,
                      ),
                      Text(
                        'Accomplished Mobile Application Developer who is able to create mobile applications for every mobile software operating system platform. Adept at developing apps based on customer specifications, recommending application changes to make more efficient programs, and upgrading existing apps to make them more useful.',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 8.0, bottom: 5.0),
                child: Text(
                  "social links",
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
              ),
              Card(
                elevation: 2.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: () {launch("https://www.facebook.com/sova.mahato.754");},
                        icon: Icon(
                          Icons.facebook,
                          color: Colors.blue,
                        ),
                      ),
                      IconButton(
                        onPressed: (){},
                        icon: Icon(
                          FontAwesomeIcons.linkedin,
                          color: Colors.green,
                        ),
                      ),
                      IconButton(
                        onPressed: () {launch("https://www.instagram.com/kushwaha_sovaa/");},
                        icon: Icon(
                          FontAwesomeIcons.instagram,
                          color: Colors.red,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.twitter,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 8.0, bottom: 5.0),
                child: Text(
                  "skills",
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
              ),
              Card(
                elevation: 2.0,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 25.0,
                    backgroundImage: NetworkImage(
                        "https://marketinginnepal.com/wp-content/uploads/2020/12/1_pE2fOVDikEUwiQJlh4ggzg.jpeg"),
                  ),
                  title: Text("Web development"),
                  subtitle: Text("HTML,CSS,JavaScript"),
                ),
              ),
              Card(
                elevation: 2.0,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 25.0,
                    backgroundImage: NetworkImage(
                        "https://miro.medium.com/max/1400/1*_9b6Zt10K0cBB5vJNAhA7A.jpeg"),
                  ),
                  title: Text("App development"),
                  subtitle: Text("Dart, Flutter"),
                ),
              ),
              // Card(
              //   elevation: 2.0,
              //   child: ListTile(
              //     leading: CircleAvatar(
              //       radius: 25.0,
              //       backgroundImage: NetworkImage(
              //           "https://miro.medium.com/max/1400/1*_9b6Zt10K0cBB5vJNAhA7A.jpeg"),
              //     ),
              //     title: Text("App development"),
              //     subtitle: Text("Dart, Flutter"),
              //   ),
              // ),
              // SizedBox(
              //   height: 20.0,
              // )
            ],
          ),
        ),
      ),
    );
  }
}
